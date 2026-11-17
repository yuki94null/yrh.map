"""Check local references and macro hazards without starting Minecraft.

This is a structural check, not a replacement for check_minecraft_syntax.py.
Dynamic macro references and references to other namespaces need runtime validation.
"""
from __future__ import annotations

import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DATA = ROOT / "data"
FUNCTION_REF = re.compile(r"\bfunction\s+(#?yrh\.map:[a-z0-9_./$()\-]+)")
PLACEHOLDER = re.compile(r"\$\([^)]+\)")


def check() -> list[str]:
    errors: list[str] = []
    functions = {
        f"yrh.map:{path.relative_to(DATA / 'yrh.map/function').with_suffix('').as_posix()}": path
        for path in (DATA / "yrh.map/function").rglob("*.mcfunction")
    }
    macros: set[str] = set()
    lines_by_id = {}
    for identifier, path in functions.items():
        lines = path.read_text(encoding="utf-8-sig").splitlines()
        lines_by_id[identifier] = lines
        if any(line.lstrip().startswith("$") for line in lines):
            macros.add(identifier)

    def reference(identifier: str, location: str) -> None:
        if "$(" in identifier or not identifier.lstrip("#").startswith("yrh.map:"):
            return
        if identifier.startswith("#"):
            target = DATA / "yrh.map/tags/function" / (identifier.split(":", 1)[1] + ".json")
            exists = target.is_file()
        else:
            exists = identifier in functions
        if not exists:
            errors.append(f"{location}: missing function {identifier}")

    for identifier, lines in lines_by_id.items():
        path = functions[identifier].relative_to(ROOT)
        for number, raw in enumerate(lines, 1):
            line = raw.strip()
            if not line or line.startswith("#"):
                continue
            location = f"{path}:{number}"
            if line.startswith("$") and not PLACEHOLDER.search(line):
                errors.append(f"{location}: macro line has no argument")
            if PLACEHOLDER.search(line) and not line.startswith("$"):
                errors.append(f"{location}: macro line is missing its leading $")
            for match in FUNCTION_REF.finditer(line):
                reference(match[1], location)
            for target in re.findall(r"\b(?:if|unless) function (\S+)", line):
                if target in macros:
                    errors.append(f"{location}: condition calls macro function {target}")

    for path in DATA.rglob("*.json"):
        try:
            value = json.loads(path.read_text(encoding="utf-8-sig"))
        except (ValueError, UnicodeError) as error:
            errors.append(f"{path.relative_to(ROOT)}: {error}")
            continue
        location = str(path.relative_to(ROOT))
        if "advancement" in path.parts and isinstance(value, dict):
            reward = value.get("rewards", {}).get("function")
            if isinstance(reward, str):
                reference(reward, location)
        if "tags" in path.parts and path.parent.name == "function":
            for entry in value.get("values", []):
                if isinstance(entry, str):
                    reference(entry, location)
                elif entry.get("required", True):
                    reference(entry["id"], location)
    return errors


if __name__ == "__main__":
    failures = check()
    for failure in failures:
        print(failure)
    print(f"Structural checks: {len(failures)} error(s)")
    raise SystemExit(bool(failures))
