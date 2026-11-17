"""Update the controller font to reference the original 32x32 item PNGs."""

import json
from pathlib import Path

from PIL import Image


ASSETS = Path(__file__).resolve().parent / "assets/yrh.map"
ICONS = {
    "reload": ("\ue205", "\ue208"),
    "move": ("\ue206", "\ue209"),
    "home": ("\ue207", "\ue20a"),
}


def main():
    font_path = ASSETS / "font/controller_button.json"
    font = json.loads(font_path.read_text(encoding="utf-8"))
    providers = {p["chars"][0]: p for p in font["providers"] if p["type"] == "bitmap"}
    advances = next(p["advances"] for p in font["providers"] if p["type"] == "space")

    for name, (glyph, spacer) in ICONS.items():
        relative_path = f"item/{name}.png"
        with Image.open(ASSETS / "textures" / relative_path) as image:
            if image.size != (32, 32):
                raise ValueError(f"{name}.png must be 32x32, got {image.width}x{image.height}")
            bounds = image.convert("RGBA").getchannel("A").getbbox()
        if bounds is None:
            raise ValueError(f"{name}.png is fully transparent")

        providers[glyph]["file"] = f"yrh.map:{relative_path}"
        # With a 32px glyph height, the left inset plus a pixel centers the visible ink.
        advances[spacer] = bounds[0] + 1

    font_path.write_text(json.dumps(font, indent=2) + "\n", encoding="utf-8")
    print("Controller font now references the original 32x32 item PNGs.")


if __name__ == "__main__":
    main()
