#!/usr/bin/env python3
"""Generate decimal RGB to two-digit hexadecimal storage functions."""

from __future__ import annotations

import json
from pathlib import Path

ROOT = Path("data/yrh.map/function/function/decimal_to_hex")
NAMESPACE = "yrh.map"
CHANNELS = ("r", "g", "b")
DIGITS = "0123456789abcdef"


def write(path: Path, commands: list[str]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text("\n".join(commands) + "\n", encoding="utf-8")


def function(path: str) -> str:
    return f"{NAMESPACE}:function/decimal_to_hex/{path}"


def snbt(value: object) -> str:
    return json.dumps(value, separators=(",", ":"))


def main() -> None:
    commands = [
        "data modify storage yrh.map:_ hex_conversion.values set value {}",
        "data modify storage yrh.map:_ hex_conversion.digits "
        "set value {r_hi:\"0\",r_lo:\"0\",g_hi:\"0\",g_lo:\"0\",b_hi:\"0\",b_lo:\"0\"}",
        "data modify storage yrh.map:_ hex_conversion.result set value {r:\"00\",g:\"00\",b:\"00\"}",
    ]
    commands.insert(1, "data modify storage yrh.map:_ hex_conversion.nibbles set value {}")
    for channel in CHANNELS:
        raw = {
            "type": "minecraft:storage",
            "storage": "yrh.map:_",
            "path": f"hex_conversion.input.{channel}",
            "fallback": 0.0,
        }
        clamped = {
            "type": "minecraft:min",
            "inputs": [
                255.0,
                {"type": "minecraft:max", "inputs": [0.0, raw]},
            ],
        }
        rounded = {"type": "minecraft:round", "input": clamped}
        to_int = {"type": "minecraft:from_float", "input": rounded}
        commands.append(
            f"data modify storage yrh.map:_ hex_conversion.values.{channel} "
            f"set compute default integer {snbt(to_int)}"
        )
        stored = {
            "type": "minecraft:storage",
            "storage": "yrh.map:_",
            "path": f"hex_conversion.values.{channel}",
            "fallback": 0,
        }
        commands.extend(
            [
                f"data modify storage yrh.map:_ hex_conversion.nibbles.{channel}_hi "
                f"set compute default integer "
                f"{snbt({'type': 'minecraft:div', 'left': stored, 'right': 16})}",
                f"data modify storage yrh.map:_ hex_conversion.nibbles.{channel}_lo "
                f"set compute default integer "
                f"{snbt({'type': 'minecraft:mod', 'left': stored, 'right': 16})}",
            ]
        )

    for channel in CHANNELS:
        commands.append(f"function {function(f'{channel}_hi')}")
        commands.append(f"function {function(f'{channel}_lo')}")
    commands.append(
        f"function {function('assemble')} with storage yrh.map:_ hex_conversion.digits"
    )
    write(ROOT / "convert.mcfunction", commands)
    write(ROOT / "root.mcfunction", [
        "data remove storage yrh.map:_ hex_conversion.input",
        "data modify storage yrh.map:_ hex_conversion.input set from storage yrh.map:_ sample",
        f"function {function('convert')}",
        "data modify storage yrh.map:_ sample.hex set from storage yrh.map:_ hex_conversion.result",
    ])

    for channel in CHANNELS:
        for place in ("hi", "lo"):
            key = f"{channel}_{place}"
            digit_commands = []
            for value, digit in enumerate(DIGITS):
                digit_commands.append(
                    f"execute if data storage yrh.map:_ "
                    f"{{hex_conversion:{{nibbles:{{{key}:{value}}}}}}} "
                    f"run data modify storage yrh.map:_ hex_conversion.digits.{key} "
                    f"set value \"{digit}\""
                )
            write(ROOT / f"{key}.mcfunction", digit_commands)

    assemble = [
        f'$data modify storage yrh.map:_ hex_conversion.result.{channel} '
        f'set value "$({channel}_hi)$({channel}_lo)"'
        for channel in CHANNELS
    ]
    write(ROOT / "assemble.mcfunction", assemble)


if __name__ == "__main__":
    main()
