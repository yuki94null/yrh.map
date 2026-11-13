#!/usr/bin/env python3
"""Generate block tags grouping blocks by texture-average RGB channel."""

from __future__ import annotations

import argparse
import csv
import json
import os
import re
import sys
import zipfile
from collections import defaultdict
from pathlib import Path


# These suffixes usually indicate alternate faces/states of a block texture,
# rather than a different block ID. Ambiguous blocks can be corrected in the
# overrides JSON passed with --overrides.
TEXTURE_SUFFIXES = (
    "_foot_east", "_foot_west", "_foot_north", "_foot_south", "_foot_up", "_foot_down",
    "_head_east", "_head_west", "_head_north", "_head_south", "_head_up", "_head_down",
    "_down_frustum", "_up_frustum", "_down_middle", "_up_middle", "_down_base", "_up_base",
    "_side_tall", "_down_tip_merge", "_up_tip_merge", "_down_tip", "_up_tip",
    "_front_vertical", "_east_crafting", "_west_crafting", "_north_crafting", "_south_crafting",
    "_east_triggered", "_west_triggered", "_north_triggered", "_south_triggered",
    "_stage_0", "_stage_1", "_stage_2", "_stage_3", "_stage_4", "_stage_5", "_stage_6", "_stage_7",
    "_side_bloom",
    "_east", "_west", "_north", "_south", "_up", "_down", "_tip",
    "_bottom", "_top", "_side", "_front", "_back", "_end", "_inner",
    "_outer", "_on", "_off", "_lit", "_unlit", "_stage0", "_stage1",
    "_stage2", "_stage3", "_stage4", "_stage5", "_stage6", "_stage7",
    "_stage", "_overlay", "_particle", "_cutout", "_emissive",
)

TEXTURE_PRIORITY = {
    "_top": 0,
    "": 1,
    "_side": 2,
    "_front": 3,
    "_bottom": 4,
    "_back": 5,
}


def texture_to_block(texture: str) -> str | None:
    """Infer a vanilla block ID from a block texture path."""
    path = Path(texture)
    if path.parent.as_posix() != "block" or path.suffix.lower() != ".png":
        return None

    name = path.stem
    # Most IDs correspond directly to a texture; only strip a suffix when the
    # filename itself is not a plausible canonical block texture.
    while True:
        suffix = next((item for item in TEXTURE_SUFFIXES if name.endswith(item)), None)
        if suffix is None:
            break
        name = name[: -len(suffix)]

    if not name or not re.fullmatch(r"[a-z0-9_]+", name):
        return None
    return f"minecraft:{name}"


def texture_priority(texture: str) -> tuple[int, str]:
    stem = Path(texture).stem
    for suffix, priority in TEXTURE_PRIORITY.items():
        if suffix and stem.endswith(suffix):
            return priority, texture
    return 1, texture


def blockstate_models(value: object) -> list[str]:
    """Collect model IDs referenced by one blockstate JSON document."""
    result: list[str] = []

    def visit(node: object) -> None:
        if isinstance(node, dict):
            model = node.get("model")
            if isinstance(model, str):
                result.append(model)
                return
            for child in node.values():
                visit(child)
        elif isinstance(node, list):
            for child in node:
                visit(child)

    visit(value)
    return result


def textures_from_jar(jar_path: Path) -> dict[str, str]:
    """Map vanilla block IDs to the texture used on their model's top face."""
    with zipfile.ZipFile(jar_path) as jar:
        names = set(jar.namelist())
        model_cache: dict[str, tuple[dict[str, str], list[dict[str, object]]]] = {}

        def model_data(
            model_id: str, active: frozenset[str] = frozenset()
        ) -> tuple[dict[str, str], list[dict[str, object]]]:
            if model_id in model_cache:
                return model_cache[model_id]
            if model_id in active:
                return {}, []

            if ":" in model_id:
                namespace, model_path = model_id.split(":", 1)
            else:
                namespace, model_path = "minecraft", model_id
            archive_path = f"assets/{namespace}/models/{model_path}.json"
            if archive_path not in names:
                return {}, []
            try:
                model = json.loads(jar.read(archive_path))
            except (KeyError, json.JSONDecodeError):
                return {}, []

            parent = model.get("parent")
            if isinstance(parent, str):
                textures, elements = model_data(parent, active | {model_id})
                textures = dict(textures)
            else:
                textures, elements = {}, []
            model_textures = model.get("textures", {})
            if isinstance(model_textures, dict):
                textures.update(
                    {key: value for key, value in model_textures.items() if isinstance(value, str)}
                )
            model_elements = model.get("elements")
            if isinstance(model_elements, list):
                elements = model_elements
            result = textures, elements
            model_cache[model_id] = result
            return result

        def resolve_texture(reference: str, textures: dict[str, str]) -> str | None:
            seen: set[str] = set()
            while reference.startswith("#") or reference in textures:
                key = reference[1:] if reference.startswith("#") else reference
                if key in seen or key not in textures:
                    return None
                seen.add(key)
                reference = textures[key]
            if ":" in reference:
                namespace, path = reference.split(":", 1)
                if namespace != "minecraft":
                    return None
            else:
                path = reference
            if not path.endswith(".png"):
                path += ".png"
            return path

        mapping: dict[str, str] = {}
        blockstates = sorted(
            path
            for path in names
            if path.startswith("assets/minecraft/blockstates/") and path.endswith(".json")
        )
        for state_path in blockstates:
            block_id = f"minecraft:{Path(state_path).stem}"
            try:
                state = json.loads(jar.read(state_path))
            except (KeyError, json.JSONDecodeError):
                continue

            for model_id in blockstate_models(state):
                textures, elements = model_data(model_id)
                top_texture: str | None = None
                fallback: list[str] = []
                for element in elements:
                    if not isinstance(element, dict):
                        continue
                    faces = element.get("faces", {})
                    if not isinstance(faces, dict):
                        continue
                    up_face = faces.get("up")
                    if isinstance(up_face, dict) and isinstance(up_face.get("texture"), str):
                        top_texture = resolve_texture(up_face["texture"], textures)
                        if top_texture:
                            break
                if top_texture is None:
                    for key in ("top", "all", "side", "front", "particle"):
                        reference = textures.get(key)
                        if reference:
                            resolved = resolve_texture(reference, textures)
                            if resolved:
                                fallback.append(resolved)
                chosen = top_texture or (fallback[0] if fallback else None)
                if chosen:
                    mapping[block_id] = chosen
                    break

    return mapping


def read_overrides(
    path: Path | None,
) -> tuple[
    dict[str, list[str]],
    dict[str, str | None],
    set[str],
    dict[str, tuple[int, int, int]],
    dict[str, list[str]],
]:
    if path is None:
        return {}, {}, set(), {}, {}
    with path.open(encoding="utf-8") as source:
        value = json.load(source)
    if not isinstance(value, dict):
        raise ValueError("Overrides file must be a JSON object")
    texture_to_blocks: dict[str, list[str]] = {}
    for texture, block_ids in value.get("texture_to_blocks", {}).items():
        if not isinstance(texture, str) or not isinstance(block_ids, list) or not all(
            isinstance(block_id, str) for block_id in block_ids
        ):
            raise ValueError("texture_to_blocks must map texture paths to arrays of block IDs")
        texture_to_blocks[texture.replace("\\", "/")] = block_ids
    block_to_texture: dict[str, str | None] = {}
    for block_id, texture in value.get("block_to_texture", {}).items():
        if not isinstance(block_id, str) or (texture is not None and not isinstance(texture, str)):
            raise ValueError("block_to_texture must map block IDs to texture paths or null")
        block_to_texture[block_id] = texture.replace("\\", "/") if texture else None
    ignored = value.get("ignore_textures", [])
    if not isinstance(ignored, list) or not all(isinstance(item, str) for item in ignored):
        raise ValueError("ignore_textures must be an array of texture paths")
    color_overrides: dict[str, tuple[int, int, int]] = {}
    categories: dict[str, list[str]] = {}
    for category, definition in value.get("block_color_categories", {}).items():
        blocks = definition.get("blocks") if isinstance(definition, dict) else None
        if (
            not isinstance(category, str)
            or not isinstance(blocks, list)
            or not all(isinstance(block_id, str) for block_id in blocks)
        ):
            raise ValueError("block_color_categories must map names to {blocks: [...]} definitions")
        categories[category] = blocks
    for block_id, rgb in value.get("block_color_overrides", {}).items():
        if (
            not isinstance(block_id, str)
            or not isinstance(rgb, list)
            or len(rgb) != 3
            or not all(isinstance(channel, int) and 0 <= channel <= 255 for channel in rgb)
        ):
            raise ValueError("block_color_overrides must map block IDs to RGB byte arrays")
        color_overrides[block_id] = (rgb[0], rgb[1], rgb[2])
    return (
        texture_to_blocks,
        block_to_texture,
        {item.replace("\\", "/") for item in ignored},
        color_overrides,
        categories,
    )


def generate(
    csv_path: Path,
    output_dir: Path,
    texture_overrides: dict[str, list[str]],
    block_overrides: dict[str, str | None],
    ignored_textures: set[str],
    color_overrides: dict[str, tuple[int, int, int]],
    model_textures: dict[str, str] | None = None,
) -> tuple[int, int, int]:
    groups: dict[tuple[str, int], set[str]] = defaultdict(set)
    unmapped: list[str] = []
    unmapped_blocks: list[str] = []
    candidates: dict[str, list[tuple[tuple[int, str], str, tuple[int, int, int]]]] = defaultdict(list)
    colors_by_texture: dict[str, tuple[int, int, int]] = {}

    with csv_path.open(encoding="utf-8-sig", newline="") as source:
        reader = csv.DictReader(source)
        required = {"texture", "red", "green", "blue"}
        if not required.issubset(reader.fieldnames or []):
            raise ValueError("CSV must contain texture, red, green, and blue columns")

        for row in reader:
            texture = row["texture"].replace("\\", "/")
            try:
                rgb = tuple(int(row[channel]) for channel in ("red", "green", "blue"))
            except (TypeError, ValueError) as error:
                raise ValueError(f"Invalid RGB values for {texture}") from error
            if any(value < 0 or value > 255 for value in rgb):
                raise ValueError(f"RGB values must be 0..255 for {texture}")
            colors_by_texture[texture] = rgb  # type: ignore[assignment]
            if texture in ignored_textures:
                continue
            if model_textures is not None:
                ids = texture_overrides.get(texture, [])
                for block_id in ids:
                    candidates[block_id].append(((-2, texture), texture, rgb))
                continue
            ids = texture_overrides.get(texture)
            if ids is None:
                inferred = texture_to_block(texture)
                ids = [inferred] if inferred else []
            if not ids:
                if texture.startswith("block/"):
                    unmapped.append(texture)
                continue

            for block_id in ids:
                candidates[block_id].append((texture_priority(texture), texture, rgb))

    if model_textures is not None:
        for block_id, texture in model_textures.items():
            if texture in ignored_textures:
                continue
            if texture not in colors_by_texture:
                unmapped_blocks.append(f"{block_id}: {texture}")
                continue
            candidates[block_id].append(((-2, texture), texture, colors_by_texture[texture]))

    # A block has one color in the output. Top-face textures take precedence,
    # then the unqualified texture, then the other faces. Explicit overrides
    # make the choice deterministic for unusual blocks.
    for block_id, texture in block_overrides.items():
        candidates.pop(block_id, None)
        if texture is None:
            continue
        if texture not in colors_by_texture:
            raise ValueError(f"Override texture is missing from CSV: {texture}")
        candidates[block_id].append(((-1, texture), texture, colors_by_texture[texture]))

    selected: dict[str, str] = {}
    for block_id, entries in candidates.items():
        _, texture, rgb = min(entries, key=lambda entry: entry[0])
        selected[block_id] = texture
        rgb = color_overrides.get(block_id, rgb)
        foliage_tinted = (
            block_id.endswith("_leaves") and block_id != "minecraft:cherry_leaves"
        ) or block_id in {
            "minecraft:vine",
            "minecraft:cave_vines",
            "minecraft:cave_vines_plant",
        }
        if foliage_tinted and block_id not in color_overrides:
            foliage = colors_by_texture.get("colormap/foliage.png")
            if foliage is not None:
                rgb = tuple(round(channel * tint / 255) for channel, tint in zip(rgb, foliage))
        for channel, value in zip(("red", "green", "blue"), rgb):
            groups[(channel, value)].add(block_id)

    # Remove earlier generated decimal filenames before writing the hex names;
    # names such as "10.json" are shared by decimal 10 and hexadecimal 0x10.
    for channel in ("red", "green", "blue"):
        channel_dir = output_dir / channel
        if channel_dir.exists():
            for old_tag in channel_dir.glob("*.json"):
                if re.fullmatch(r"[0-9a-fA-F]{1,3}", old_tag.stem):
                    old_tag.unlink()
            range_dir = channel_dir / "ranges"
            if range_dir.exists():
                for old_tag in range_dir.rglob("*.json"):
                    old_tag.unlink()

    for channel in ("red", "green", "blue"):
        for value in range(256):
            # One byte per channel: red/7f + green/3f + blue/00 => #7f3f00.
            tag_path = output_dir / channel / f"{value:02x}.json"
            entries = sorted(groups[(channel, value)])
            tag_path.parent.mkdir(parents=True, exist_ok=True)
            tag_path.write_text(
                json.dumps(
                    {
                        "replace": False,
                        "values": [{"id": entry, "required": False} for entry in entries],
                    },
                    indent=2,
                )
                + "\n",
                encoding="utf-8",
            )

        # Store 2, 4, 8, 16, and 32 equal ranges. Each tag contains block IDs
        # directly so Minecraft does not need to resolve nested tag references.
        for level in range(1, 6):
            partitions = 2**level
            width = 256 // partitions
            for index in range(partitions):
                low = index * width
                high = low + width - 1
                entries: set[str] = set()
                for value in range(low, high + 1):
                    entries.update(groups[(channel, value)])

                range_name = f"{low:02x}_{high:02x}.json"
                tag_path = output_dir / channel / "ranges" / str(partitions) / range_name
                tag_path.parent.mkdir(parents=True, exist_ok=True)
                tag_path.write_text(
                    json.dumps(
                        {
                            "replace": False,
                            "values": [
                                {"id": entry, "required": False}
                                for entry in sorted(entries)
                            ],
                        },
                        indent=2,
                    )
                    + "\n",
                    encoding="utf-8",
                )

    report_path = output_dir / "unmapped_textures.txt"
    if unmapped:
        report_path.parent.mkdir(parents=True, exist_ok=True)
        report_path.write_text("\n".join(sorted(unmapped)) + "\n", encoding="utf-8")
    elif report_path.exists():
        report_path.unlink()

    unmapped_blocks_path = output_dir / "unmapped_block_textures.txt"
    if unmapped_blocks:
        unmapped_blocks_path.parent.mkdir(parents=True, exist_ok=True)
        unmapped_blocks_path.write_text("\n".join(sorted(unmapped_blocks)) + "\n", encoding="utf-8")
    elif unmapped_blocks_path.exists():
        unmapped_blocks_path.unlink()

    return len(selected), len(unmapped), len(candidates) - len(selected)


def main() -> int:
    parser = argparse.ArgumentParser(
        description="Generate RGB channel block tags from average_texture_colors.py CSV output."
    )
    parser.add_argument("colors_csv", type=Path, help="Input colors.csv")
    parser.add_argument(
        "--output-dir",
        type=Path,
        default=Path("data/yrh.map/tags/block/color"),
        help="Tag directory (default: data/yrh.map/tags/block/color)",
    )
    parser.add_argument(
        "--overrides",
        type=Path,
        default=Path(__file__).with_name("block_texture_overrides.json"),
        help="JSON file for exceptional texture-to-block mappings (defaults to adjacent file)",
    )
    default_jar = Path(os.environ.get("APPDATA", ".")) / ".minecraft/versions/26.3/26.3.jar"
    parser.add_argument(
        "--minecraft-jar",
        type=Path,
        default=default_jar if default_jar.is_file() else None,
        help="Minecraft 26.3 client JAR; auto-detected from the default Windows install when available",
    )
    args = parser.parse_args()

    if not args.colors_csv.is_file():
        parser.error(f"CSV file does not exist: {args.colors_csv}")
    if args.minecraft_jar is not None and not args.minecraft_jar.is_file():
        parser.error(f"Minecraft JAR does not exist: {args.minecraft_jar}")
    try:
        texture_overrides, block_overrides, ignored_textures, color_overrides, categories = read_overrides(args.overrides)
        model_textures = textures_from_jar(args.minecraft_jar) if args.minecraft_jar else None
        blocks, unmapped, excluded = generate(
            args.colors_csv,
            args.output_dir,
            texture_overrides,
            block_overrides,
            ignored_textures,
            color_overrides,
            model_textures,
        )
        category_dir = Path("data/yrh.map/tags/block/color_category")
        category_dir.mkdir(parents=True, exist_ok=True)
        for category, block_ids in categories.items():
            tag = {
                "replace": False,
                "values": [{"id": block_id, "required": False} for block_id in sorted(block_ids)],
            }
            (category_dir / f"{category}.json").write_text(
                json.dumps(tag, indent=2) + "\n", encoding="utf-8"
            )
    except (OSError, ValueError, json.JSONDecodeError) as error:
        parser.error(str(error))

    print(
        f"Generated tags for {blocks} block ID(s); "
        f"{unmapped} texture(s) need review; {excluded} block ID(s) excluded."
    )
    if unmapped:
        print(f"Review: {args.output_dir / 'unmapped_textures.txt'}")
    if args.minecraft_jar is not None:
        print(f"Review model textures: {args.output_dir / 'unmapped_block_textures.txt'}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
