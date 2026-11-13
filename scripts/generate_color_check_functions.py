#!/usr/bin/env python3
"""Generate five-level block and biome color lookup functions for Minecraft."""

from __future__ import annotations

from pathlib import Path


ROOT = Path("data/yrh.map/function/function/color_check")
NAMESPACE = "yrh.map"
CHANNELS = (("r", "red"), ("g", "green"), ("b", "blue"))
BIOME_COLOR_TYPES = ("grass", "foliage", "dry_foliage", "water")


def write(path: Path, commands: list[str]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text("\n".join(commands) + "\n", encoding="utf-8")


def function_id(path: str) -> str:
    return f"{NAMESPACE}:function/color_check/{path}"


def main() -> None:
    root_commands = [
        f"data modify storage {NAMESPACE}:_ tmp set value {{r:0,g:0,b:0}}"
    ]
    for short, _ in CHANNELS:
        root_commands.append(f"function {function_id(f'{short}/root')}")
    write(ROOT / "root.mcfunction", root_commands)

    for short, channel in CHANNELS:
        # The first partition level keeps the existing short path layout:
        # r/00_7f and r/80_ff.
        for level in range(1, 6):
            partitions = 2**level
            width = 256 // partitions
            for index in range(partitions):
                low = index * width
                high = low + width - 1
                range_name = f"{low:02x}_{high:02x}"
                if level == 1:
                    relative_path = f"{short}/{range_name}"
                else:
                    relative_path = f"{short}/{partitions}/{range_name}"

                if level == 5:
                    # Store the bucket's lower byte directly as a two-digit
                    # hexadecimal string for later Raw JSON color assembly.
                    commands = [
                        f'data modify storage {NAMESPACE}:_ tmp.{short} '
                        f"set value {low}"
                    ]
                else:
                    child_partitions = partitions * 2
                    commands = []
                    for child_index in (index * 2, index * 2 + 1):
                        child_low = child_index * (256 // child_partitions)
                        child_high = child_low + (256 // child_partitions) - 1
                        child_name = f"{child_low:02x}_{child_high:02x}"
                        child_function = (
                            f"{short}/{child_name}"
                            if level + 1 == 1
                            else f"{short}/{child_partitions}/{child_name}"
                        )
                        commands.append(
                            f"execute if block ~ ~ ~ #{NAMESPACE}:color/{channel}/ranges/"
                            f"{child_partitions}/{child_name} run function {function_id(child_function)}"
                        )

                write(ROOT / f"{relative_path}.mcfunction", commands)

        root_commands = [
            f"execute if block ~ ~ ~ #{NAMESPACE}:color/{channel}/ranges/2/00_7f "
            f"run function {function_id(f'{short}/00_7f')}",
            f"execute if block ~ ~ ~ #{NAMESPACE}:color/{channel}/ranges/2/80_ff "
            f"run function {function_id(f'{short}/80_ff')}",
        ]
        write(ROOT / f"{short}/root.mcfunction", root_commands)

    # Generate the same five-step RGB lookup using biome tags. The biome color
    # type selects the corresponding biome color table (grass, foliage, water).
    for color_type in BIOME_COLOR_TYPES:
        write(
            ROOT / f"biome/{color_type}/root.mcfunction",
            [
                f"function {function_id(f'biome/{color_type}/{short}/root')}"
                for short, _ in CHANNELS
            ],
        )
        for short, channel in CHANNELS:
            for level in range(1, 6):
                partitions = 2**level
                width = 256 // partitions
                for index in range(partitions):
                    low = index * width
                    high = low + width - 1
                    range_name = f"{low:02x}_{high:02x}"
                    relative_path = (
                        f"biome/{color_type}/{short}/{range_name}"
                        if level == 1
                        else f"biome/{color_type}/{short}/{partitions}/{range_name}"
                    )
                    if level == 5:
                        commands = [
                            f'data modify storage {NAMESPACE}:_ tmp.{short} '
                            f"set value {low}"
                        ]
                    else:
                        child_partitions = partitions * 2
                        commands = []
                        for child_index in (index * 2, index * 2 + 1):
                            child_low = child_index * (256 // child_partitions)
                            child_high = child_low + (256 // child_partitions) - 1
                            child_name = f"{child_low:02x}_{child_high:02x}"
                            child_function = (
                                f"biome/{color_type}/{short}/{child_name}"
                                if level + 1 == 1
                                else f"biome/{color_type}/{short}/{child_partitions}/{child_name}"
                            )
                            commands.append(
                                f"execute if biome ~ ~ ~ #{NAMESPACE}:color/{color_type}/{channel}/ranges/"
                                f"{child_partitions}/{child_name} run function {function_id(child_function)}"
                            )
                    write(ROOT / f"{relative_path}.mcfunction", commands)

            write(
                ROOT / f"biome/{color_type}/{short}/root.mcfunction",
                [
                    f"execute if biome ~ ~ ~ #{NAMESPACE}:color/{color_type}/{channel}/ranges/2/00_7f "
                    f"run function {function_id(f'biome/{color_type}/{short}/00_7f')}",
                    f"execute if biome ~ ~ ~ #{NAMESPACE}:color/{color_type}/{channel}/ranges/2/80_ff "
                    f"run function {function_id(f'biome/{color_type}/{short}/80_ff')}",
                ],
            )

    # Route biome-tinted blocks to the relevant colormap family. Returning
    # from a matched branch makes exclusions on the fallback unnecessary.
    root_commands = [
        f"data modify storage {NAMESPACE}:_ tmp set value {{r:0,g:0,b:0}}",
        f"execute if block ~ ~ ~ #{NAMESPACE}:color_category/water "
        f"run return run function {function_id('biome/water/root')}",
        f"execute if block ~ ~ ~ #{NAMESPACE}:color_category/dry_foliage "
        f"run return run function {function_id('biome/dry_foliage/root')}",
        f"execute if block ~ ~ ~ #{NAMESPACE}:color_category/grass "
        f"if block ~ ~ ~ #{NAMESPACE}:color_category/foliage "
        f"run return run function {function_id('biome/foliage/root')}",
        f"execute if block ~ ~ ~ #{NAMESPACE}:color_category/grass "
        f"run return run function {function_id('biome/grass/root')}",
        f"function {function_id('r/root')}",
        f"function {function_id('g/root')}",
        f"function {function_id('b/root')}",
    ]
    write(ROOT / "root.mcfunction", root_commands)


if __name__ == "__main__":
    main()
