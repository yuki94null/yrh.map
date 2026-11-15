"""Generate the 9x9 glyph atlas used by the world map font.

Usage:
    python scripts/generate_map_pixel_font.py <resource-pack>/assets/yrh.map/textures/font/map_pixel.png
"""
from pathlib import Path
import sys

from PIL import Image


TILE_WIDTH = 9
TILE_HEIGHT = 10
EDGE_WIDTH = 2
BASE_COLOR = (255, 255, 255, 255)
SHADOW_COLOR = (128, 128, 128, 255)
TRANSPARENT = (0, 0, 0, 0)


def main() -> None:
    if len(sys.argv) != 2:
        raise SystemExit(__doc__)

    atlas = Image.new("RGBA", (TILE_WIDTH * 16, TILE_HEIGHT * 3), TRANSPARENT)
    pixels = atlas.load()
    for mask in range(16):
        for y in range(TILE_HEIGHT):
            for x in range(TILE_WIDTH):
                pixels[mask * TILE_WIDTH + x, y] = BASE_COLOR

                is_shadow = ((mask & 1 and y < EDGE_WIDTH)
                             or (mask & 2 and x >= TILE_WIDTH - EDGE_WIDTH)
                             or (mask & 4 and y >= TILE_HEIGHT - EDGE_WIDTH)
                             or (mask & 8 and x < EDGE_WIDTH))
                if is_shadow:
                    pixels[mask * TILE_WIDTH + x, TILE_HEIGHT + y] = SHADOW_COLOR

                is_highlight = ((mask & 1 and y < EDGE_WIDTH)
                                or (mask & 8 and x < EDGE_WIDTH))
                if is_highlight:
                    pixels[mask * TILE_WIDTH + x, TILE_HEIGHT * 2 + y] = BASE_COLOR

        # Bitmap glyph advances are inferred from the rightmost nontransparent
        # pixel. Preserve a 9px advance even for narrow edge-only overlays.
        for y in range(TILE_HEIGHT):
            if pixels[mask * TILE_WIDTH + TILE_WIDTH - 1, TILE_HEIGHT + y][3] == 0:
                pixels[mask * TILE_WIDTH + TILE_WIDTH - 1, TILE_HEIGHT + y] = (255, 255, 255, 1)
            if pixels[mask * TILE_WIDTH + TILE_WIDTH - 1, TILE_HEIGHT * 2 + y][3] == 0:
                pixels[mask * TILE_WIDTH + TILE_WIDTH - 1, TILE_HEIGHT * 2 + y] = (255, 255, 255, 1)

    output = Path(sys.argv[1])
    output.parent.mkdir(parents=True, exist_ok=True)
    atlas.save(output)

    resource_assets = output.parent.parent.parent
    font_json = resource_assets / "font/map_pixel.json"
    font_json.parent.mkdir(parents=True, exist_ok=True)
    chars = [
        "■" + "".join(chr(0xE000 + index) for index in range(1, 16)),
        "".join(chr(0xE010 + index) for index in range(16)),
        "".join(chr(0xE020 + index) for index in range(16)),
    ]
    font_json.write_text(
        '{\n'
        '  "providers": [\n'
        '    {"type": "bitmap", "file": "yrh.map:font/map_pixel.png", '
        '"height": 10, "ascent": 9, "chars": [\n'
        + ",\n".join(f'      "{row}"' for row in chars)
        + '\n    ]},\n'
        '    {"type": "space", "advances": {"\ue000": -1, "\ue030": -10}}\n'
        '  ]\n'
        '}\n',
        encoding="utf-8",
    )
    print(f"Wrote {atlas.width}x{atlas.height} glyph atlas and {font_json}")


if __name__ == "__main__":
    main()
