"""Load this datapack using the Minecraft Java 26.3 GameTest runner."""

import argparse
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import tempfile
from xml.etree import ElementTree


ROOT = Path(__file__).resolve().parents[1]
VERSION = "26.3"
ENTRY_POINT = "net.minecraft.gametest.Main"
SMOKE_TEST = "yrh_syntax_check:pack_loaded"
JVM_OPTIONS = ["-XX:ActiveProcessorCount=4", "-XX:TieredStopAtLevel=1"]
ERROR = re.compile(
    r"/(?:ERROR|FATAL)\]|Failed to (?:load|parse)|Couldn't (?:load|parse)|"
    r"Errors in registry|Exception in thread",
    re.IGNORECASE,
)
MACRO_TOKEN = re.compile(r"\$\(([A-Za-z0-9_]+)\)")
MACRO_EXAMPLES = {
    "Owner": "[I;1,2,3,4]", "anchor": "[I;1,2,3,4]",
    "owner": "[I;1,2,3,4]", "player": "[I;1,2,3,4]", "UUID": "[I;1,2,3,4]",
    "field": "eye",
    "appearance_action": "reset", "action": "pan_north", "event": "interaction", "side": "right",
    "quality": "full", "mode": "average",
    "color": "334455", "highlight": "667788",
    "glyph": "■", "highlight_glyph": "■", "shadow_glyph": "■",
    "fallback": "test", "message": "yrh.map.test", "text": "■", "previous": "■",
    "r": "33", "g": "44", "b": "55", "hr": "66", "hg": "77", "hb": "88",
}
MACRO_NUMBERS = {
    "b_hi", "b_lo", "base_yaw", "base_pitch", "cx", "cz", "dx", "dz", "from", "g_hi", "g_lo", "height",
    "height_factor", "highlight_mask", "i", "id", "index", "interval", "lx", "lz",
    "map_id", "palette_slot", "north", "nx", "nz", "own", "page", "posX", "posZ", "px", "py", "r_hi", "r_lo",
    "revision", "scale", "shade", "shadow_mask", "size", "slot", "span", "start_revision", "sx",
    "sz", "to", "u0", "u1", "u2", "u3", "water", "west", "x", "y", "z",
}


def default_java(minecraft_dir):
    exe = "java.exe" if os.name == "nt" else "java"
    for folder in (ROOT, *ROOT.parents, minecraft_dir):
        candidates = sorted((folder / "jre").glob(f"*/bin/{exe}"))
        for candidate in candidates:
            release = candidate.parent.parent / "release"
            if release.is_file() and re.search(
                r'^JAVA_VERSION="25(?:[."]|$)', release.read_text(encoding="utf-8"), re.M
            ):
                return str(candidate)
    return exe


def installed_classpath(minecraft_dir):
    version_dir = minecraft_dir / "versions" / VERSION
    manifest = json.loads((version_dir / f"{VERSION}.json").read_text(encoding="utf-8"))
    client = version_dir / f"{VERSION}.jar"
    if manifest["id"] != VERSION or not client.is_file():
        raise ValueError(f"Minecraft {VERSION} is missing from {version_dir}")
    jars = [client]
    for entry in manifest["libraries"]:
        artifact = entry.get("downloads", {}).get("artifact", {}).get("path")
        if artifact:
            jar = minecraft_dir / "libraries" / artifact
            if jar.is_file():
                jars.append(jar)
    return os.pathsep.join(str(jar.resolve()).replace("\\", "/") for jar in jars)


def example_for_macro(key, path):
    if key == "slot" and path.stem in {"ensure_resize_tile", "has_resize_tile"}:
        return "yrh.map.tile_p0_p0"
    if path.stem == "color_slot" and key == "color":
        return "yellow"
    if key in MACRO_EXAMPLES:
        return MACRO_EXAMPLES[key]
    if re.fullmatch(r"c\d+", key):
        return '{text:"■",color:"#334455"}'
    if re.fullmatch(r"[xz]\d+", key):
        return "0"
    if key in {"x", "z", "cx", "cz", "sx", "sz", "posX", "posZ", "dx", "dz"}:
        return "-16"
    if key in {"lx", "lz", "i", "index"}:
        return "0"
    if key in MACRO_NUMBERS:
        return "1"
    raise ValueError(f"Missing macro test value for $({key}) in {path}")


def create_macro_checks(pack):
    original = pack / "data" / "yrh.map" / "function"
    output = pack / "data" / "yrh_syntax_check" / "function"
    count = 0
    for source in sorted(original.rglob("*.mcfunction")):
        commands = source.read_text(encoding="utf-8").splitlines()
        for line_number, line in enumerate(commands, start=1):
            command = line.lstrip()
            if command.startswith("#"):
                continue
            if command.startswith("$") != bool(MACRO_TOKEN.search(command)):
                raise ValueError(
                    f"Macro prefix and arguments disagree at {source.relative_to(original)}:"
                    f"{line_number}"
                )
        if not any(line.lstrip().startswith("$") for line in commands):
            continue
        expanded = []
        for command in commands:
            command = command.lstrip()
            if command.startswith("$"):
                command = MACRO_TOKEN.sub(
                    lambda match: example_for_macro(match[1], source.relative_to(original)),
                    command[1:],
                )
            expanded.append(command)
        target = output / source.relative_to(original)
        target.parent.mkdir(parents=True, exist_ok=True)
        # No load/tick tags reference these copies. Minecraft only parses them.
        target.write_text("\n".join(expanded) + "\n", encoding="utf-8")
        count += 1
    return count


def run(args, work):
    packs = work / "packs"
    pack = packs / "yrh.map"
    pack.mkdir(parents=True)
    shutil.copy2(ROOT / "pack.mcmeta", pack)
    shutil.copytree(ROOT / "data", pack / "data")
    macro_count = create_macro_checks(pack)
    smoke = pack / "data" / "yrh_syntax_check" / "test_instance" / "pack_loaded.json"
    smoke.parent.mkdir(parents=True)
    smoke.write_text(json.dumps({
        "type": "minecraft:function",
        "environment": "minecraft:default",
        "function": "minecraft:always_pass",
        "max_ticks": 1,
        "required": True,
        "setup_ticks": 1,
        "structure": "minecraft:empty",
    }), encoding="utf-8")

    java = args.java or default_java(args.minecraft_dir)
    if args.server_jar:
        cmd = [
            java, *JVM_OPTIONS,
            f"-DbundlerMainClass={ENTRY_POINT}",
            "-jar",
            str(args.server_jar.resolve(strict=True)),
        ]
    else:
        classpath = installed_classpath(args.minecraft_dir)
        # The launcher classpath exceeds the Windows command-line length limit.
        (work / "classpath.args").write_text(
            f'-cp\n"{classpath}"\n{ENTRY_POINT}\n', encoding="utf-8"
        )
        cmd = [java, *JVM_OPTIONS, "@classpath.args"]
    cmd += [
        "--packs", "packs", "--tests", SMOKE_TEST,
        "--universe", "world", "--report", "report.xml",
    ]
    log = args.log or (work / "minecraft-output.log")
    try:
        with log.open("w", encoding="utf-8") as file:
            result = subprocess.run(
                cmd, cwd=work, stdout=file, stderr=subprocess.STDOUT, timeout=args.timeout,
            )
    except subprocess.TimeoutExpired:
        print(log.read_text(encoding="utf-8", errors="replace"), end="")
        raise
    output = log.read_text(encoding="utf-8", errors="replace")
    report = work / "report.xml"
    test_passed = False
    if report.is_file():
        cases = ElementTree.parse(report).findall(".//testcase")
        test_passed = any(
            SMOKE_TEST in case.get("name", "")
            and all(case.find(tag) is None for tag in ("failure", "error", "skipped"))
            for case in cases
        )
    errors = [line for line in output.splitlines() if ERROR.search(line)]
    if result.returncode or errors or not test_passed:
        print(output, end="")
        print(f"Minecraft syntax check failed (exit code {result.returncode}).")
        return 1
    print(
        f"Minecraft {VERSION} loaded the datapack and parsed {macro_count} macro examples. "
        "GameTest passed."
    )
    return 0


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    default_minecraft = Path(os.environ.get("APPDATA", Path.home())) / ".minecraft"
    parser.add_argument("--minecraft-dir", type=Path, default=default_minecraft)
    parser.add_argument("--server-jar", type=Path, help="Optional official 26.3 server.jar")
    parser.add_argument("--java", help="Path to a Java 25 executable")
    parser.add_argument("--log", type=Path, help="Save the full Minecraft output")
    parser.add_argument("--timeout", type=int, default=180)
    args = parser.parse_args()
    try:
        with tempfile.TemporaryDirectory(prefix="yrh-map-gametest-") as tmp:
            return run(args, Path(tmp))
    except (OSError, ValueError, subprocess.TimeoutExpired, ElementTree.ParseError) as error:
        parser.exit(1, f"Minecraft syntax check could not run: {error}\n")


if __name__ == "__main__":
    raise SystemExit(main())
