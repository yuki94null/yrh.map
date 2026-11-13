#!/usr/bin/env python3
"""Collect vanilla biome colors and generate RGB channel biome tags."""

from __future__ import annotations

import argparse
import io
import json
import os
import re
import zipfile
from collections import defaultdict
from pathlib import Path

try:
    from PIL import Image
except ImportError:
    Image = None

CHANNELS = ("red", "green", "blue")
COLOR_MAPS = {
    "grass": "grass",
    "foliage": "foliage",
    "dry_foliage": "dry_foliage",
}
DEFAULT_WATER = (63, 118, 228)


def parse_color(value: str | list[float] | None) -> tuple[int, int, int] | None:
    if value is None:
        return None
    if isinstance(value, str) and re.fullmatch(r"#[0-9a-fA-F]{6}", value):
        return tuple(int(value[index : index + 2], 16) for index in (1, 3, 5))
    if isinstance(value, list) and len(value) == 3:
        return tuple(round(max(0.0, min(1.0, channel)) * 255) for channel in value)
    raise ValueError(f"Unsupported biome color value: {value!r}")


def load_colormap(jar: zipfile.ZipFile, name: str):
    if Image is None:
        raise RuntimeError("Pillow is required. Install it with: python -m pip install Pillow")
    path = f"assets/minecraft/textures/colormap/{name}.png"
    with Image.open(io.BytesIO(jar.read(path))) as source:
        return source.convert("RGB").copy()


def climate_color(image, temperature: float, downfall: float) -> tuple[int, int, int]:
    # This follows the vanilla 256x256 colormap lookup. Each axis is inverted:
    # temperature selects X, while temperature * downfall selects Y.
    temperature = max(0.0, min(1.0, temperature))
    downfall = max(0.0, min(1.0, downfall)) * temperature
    x = max(0, min(255, int((1.0 - temperature) * 255.0)))
    y = max(0, min(255, int((1.0 - downfall) * 255.0)))
    return image.getpixel((x, y))


def dark_forest_grass(rgb: tuple[int, int, int]) -> tuple[int, int, int]:
    packed = (rgb[0] << 16) | (rgb[1] << 8) | rgb[2]
    packed = ((packed & 0xFEFEFE) + 0x28340A) >> 1
    return ((packed >> 16) & 255, (packed >> 8) & 255, packed & 255)


def collect(jar_path: Path) -> dict:
    rows = {}
    with zipfile.ZipFile(jar_path) as jar:
        maps = {key: load_colormap(jar, filename) for key, filename in COLOR_MAPS.items()}
        biome_paths = sorted(
            name for name in jar.namelist()
            if name.startswith("data/minecraft/worldgen/biome/") and name.endswith(".json")
        )
        for archive_path in biome_paths:
            biome_id = "minecraft:" + archive_path.removeprefix(
                "data/minecraft/worldgen/biome/"
            ).removesuffix(".json")
            definition = json.loads(jar.read(archive_path))
            effects = definition.get("effects", {})
            temperature = float(definition["temperature"])
            downfall = float(definition["downfall"])
            modifier = effects.get("grass_color_modifier", "none")

            colors = {}
            methods = {}
            for color_type, image in maps.items():
                override = parse_color(effects.get(f"{color_type}_color"))
                if override is not None:
                    colors[color_type] = override
                    methods[color_type] = "biome_effect_override"
                else:
                    colors[color_type] = climate_color(image, temperature, downfall)
                    methods[color_type] = f"{color_type}_colormap"

            if modifier == "dark_forest":
                colors["grass"] = dark_forest_grass(colors["grass"])
                methods["grass"] += "+dark_forest_modifier"
            elif modifier == "swamp":
                # The vanilla swamp modifier varies by world X/Z noise. A biome
                # tag alone cannot encode that; store the common representative.
                colors["grass"] = (76, 118, 60)
                methods["grass"] = "swamp_modifier_representative; varies_by_xz"

            water = parse_color(effects.get("water_color"))
            colors["water"] = water if water is not None else DEFAULT_WATER
            methods["water"] = "biome_effect_override" if water is not None else "default_water_color"

            rows[biome_id] = {
                "temperature": temperature,
                "temperature_modifier": definition.get("temperature_modifier", "none"),
                "downfall": downfall,
                "grass_color_modifier": modifier,
                "colors": {key: list(value) for key, value in colors.items()},
                "color_source": methods,
            }
    return rows


def write_tags(rows: dict, output_dir: Path, partitions: int = 32) -> int:
    groups = {
        color_type: {channel: defaultdict(list) for channel in CHANNELS}
        for color_type in (*COLOR_MAPS.keys(), "water")
    }
    for biome_id, row in rows.items():
        for color_type, rgb in row["colors"].items():
            for channel, value in zip(CHANNELS, rgb):
                groups[color_type][channel][value].append(biome_id)

    for color_type in groups:
        base = output_dir / color_type
        for channel in CHANNELS:
            channel_dir = base / channel
            if channel_dir.exists():
                for old in channel_dir.glob("*.json"):
                    if re.fullmatch(r"[0-9a-fA-F]{1,3}", old.stem):
                        old.unlink()
                range_dir = channel_dir / "ranges"
                if range_dir.exists():
                    for old in range_dir.rglob("*.json"):
                        old.unlink()

            for value in range(256):
                write_tag(channel_dir / f"{value:02x}.json", groups[color_type][channel][value])

            for level in range(1, 6):
                count = 2**level
                width = 256 // count
                for index in range(count):
                    low, high = index * width, (index + 1) * width - 1
                    ids = [
                        biome_id
                        for value in range(low, high + 1)
                        for biome_id in groups[color_type][channel][value]
                    ]
                    write_tag(
                        channel_dir / "ranges" / str(count) / f"{low:02x}_{high:02x}.json",
                        ids,
                    )
    return sum(len(channels[channel]) for channels in groups.values() for channel in CHANNELS)


def write_tag(path: Path, biome_ids: list[str]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    payload = {
        "replace": False,
        "values": [{"id": biome_id, "required": False} for biome_id in sorted(set(biome_ids))],
    }
    path.write_text(json.dumps(payload, indent=2) + "\n", encoding="utf-8")


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    default_jar = Path(os.environ.get("APPDATA", ".")) / ".minecraft/versions/26.3/26.3.jar"
    parser.add_argument("--minecraft-jar", type=Path, default=default_jar)
    parser.add_argument(
        "--json-output",
        type=Path,
        default=Path("data/yrh.map/biome_colors.json"),
    )
    parser.add_argument(
        "--tag-output",
        type=Path,
        default=Path("data/yrh.map/tags/worldgen/biome/color"),
    )
    args = parser.parse_args()
    rows = collect(args.minecraft_jar)
    args.json_output.parent.mkdir(parents=True, exist_ok=True)
    args.json_output.write_text(json.dumps(rows, indent=2) + "\n", encoding="utf-8")
    tag_count = write_tags(rows, args.tag_output)
    print(
        f"Collected {len(rows)} biome(s); wrote biome color JSON to {args.json_output} "
        f"and {tag_count} populated RGB channel bucket(s) across {len(COLOR_MAPS) + 1} color types."
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
