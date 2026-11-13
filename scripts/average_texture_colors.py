#!/usr/bin/env python3
"""Calculate alpha-weighted average RGB colors for PNG textures."""

from __future__ import annotations

import argparse
import csv
import sys
from pathlib import Path
from typing import TextIO

try:
    from PIL import Image
except ImportError:
    Image = None  # type: ignore[assignment,misc]


def average_rgb(image_path: Path) -> tuple[int, int, int]:
    """Return the average RGB, weighting each pixel by its alpha value.

    Fully transparent pixels do not affect the result. If the whole image is
    transparent, return black.
    """
    assert Image is not None
    with Image.open(image_path) as source:
        image = source.convert("RGBA")
        red_total = green_total = blue_total = alpha_total = 0

        for red, green, blue, alpha in image.getdata():
            red_total += red * alpha
            green_total += green * alpha
            blue_total += blue * alpha
            alpha_total += alpha

    if alpha_total == 0:
        return (0, 0, 0)

    return (
        round(red_total / alpha_total),
        round(green_total / alpha_total),
        round(blue_total / alpha_total),
    )


def write_csv(assets_dir: Path, output: TextIO) -> int:
    writer = csv.writer(output)
    writer.writerow(("texture", "red", "green", "blue"))
    count = 0

    for image_path in sorted(assets_dir.rglob("*.png")):
        relative_path = image_path.relative_to(assets_dir).as_posix()
        try:
            red, green, blue = average_rgb(image_path)
        except Exception as error:
            print(f"Skipping {relative_path}: {error}", file=sys.stderr)
            continue

        writer.writerow((relative_path, red, green, blue))
        count += 1

    return count


def main() -> int:
    parser = argparse.ArgumentParser(
        description="Write average RGB values for every PNG under an assets directory."
    )
    parser.add_argument(
        "assets_dir",
        type=Path,
        help="Directory to scan recursively for PNG textures (for example, assets/textures)",
    )
    parser.add_argument(
        "-o",
        "--output",
        type=Path,
        help="CSV output file; writes to stdout when omitted",
    )
    args = parser.parse_args()

    if Image is None:
        parser.error("Pillow is required. Install it with: python -m pip install Pillow")
    if not args.assets_dir.is_dir():
        parser.error(f"assets directory does not exist or is not a directory: {args.assets_dir}")

    if args.output is None:
        count = write_csv(args.assets_dir, sys.stdout)
    else:
        with args.output.open("w", encoding="utf-8", newline="") as output:
            count = write_csv(args.assets_dir, output)

    print(f"Processed {count} PNG texture(s).", file=sys.stderr)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
