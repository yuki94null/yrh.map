"""Build the radial menu's PNG atlas from the six item textures."""

import argparse
from pathlib import Path

from PIL import Image


TEXTURES = Path(__file__).resolve().parent / "assets/yrh.map/textures"
CELL_SIZE = 64
# Clockwise from the top, matching the shader's sector order.
ICON_NAMES = ("waypoint_visible", "visible", "next_page", "delete", "prev_page", "pin")


def build_atlas(source: Path) -> Image.Image:
    atlas = Image.new("RGBA", (CELL_SIZE * len(ICON_NAMES), CELL_SIZE))
    for index, name in enumerate(ICON_NAMES):
        path = source / f"{name}.png"
        with Image.open(path) as image:
            icon = image.convert("RGBA")
        bounds = icon.getchannel("A").getbbox()
        if bounds is None:
            raise ValueError(f"{path} is fully transparent")

        ink = icon.crop(bounds)
        canvas_size = max(icon.size)
        centered = Image.new("RGBA", (canvas_size, canvas_size))
        centered.paste(ink, ((canvas_size - ink.width) // 2, (canvas_size - ink.height) // 2))
        tile = centered.resize((CELL_SIZE, CELL_SIZE), Image.Resampling.LANCZOS)
        atlas.paste(tile, (index * CELL_SIZE, 0))
    return atlas


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("source", nargs="?", type=Path, default=TEXTURES / "item",
                        help="Directory containing the six item PNGs")
    parser.add_argument("--output", type=Path, default=TEXTURES / "effect/radial_menu_icons.png",
                        help="Destination PNG")
    args = parser.parse_args()
    try:
        atlas = build_atlas(args.source)
        args.output.parent.mkdir(parents=True, exist_ok=True)
        atlas.save(args.output, optimize=True)
    except (OSError, ValueError) as error:
        parser.exit(1, f"{error}\n")
    print(f"{args.output.resolve()} ({atlas.width} x {atlas.height})")


if __name__ == "__main__":
    main()
