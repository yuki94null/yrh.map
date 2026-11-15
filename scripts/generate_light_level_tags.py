"""Generate block tags and a function that reads a block's light emission level.

The tags describe each block's maximum emitted light. Stateful blocks are
checked separately in the getter where their properties affect emission.
"""
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
TAG_ROOT = ROOT / "data/yrh.map/tags/block/light_level"
FUNC_ROOT = ROOT / "data/yrh.map/function/function/get_brightness"

# Minecraft 26.3 block emission values. Stateful blocks are handled below.
LEVELS = {
    1: "brown_mushroom brewing_stand end_portal_frame dragon_egg small_amethyst_bud sculk_sensor calibrated_sculk_sensor",
    2: "firefly_bush medium_amethyst_bud",
    3: "magma_block",
    4: "large_amethyst_bud",
    5: "amethyst_cluster",
    6: "sculk_catalyst",
    7: "redstone_torch glow_lichen enchanting_table ender_chest",
    8: "",
    9: "",
    10: "soul_fire soul_torch soul_wall_torch soul_lantern crying_obsidian soul_campfire",
    11: "nether_portal",
    12: "end_rod",
    13: "furnace smoker blast_furnace",
    14: "torch wall_torch copper_torch copper_wall_torch",
    15: "lava fire glowstone jack_o_lantern lava_cauldron end_portal redstone_lamp beacon light sea_lantern end_gateway lantern campfire shroomlight conduit",
}

# Emitters whose level varies by state. Entries use block-state predicates.
STATEFUL = {
    2: ["candle", "white_candle", "orange_candle", "magenta_candle", "light_blue_candle", "yellow_candle", "lime_candle", "pink_candle", "gray_candle", "light_gray_candle", "cyan_candle", "purple_candle", "blue_candle", "brown_candle", "green_candle", "red_candle", "black_candle"],
    3: ["candle_cake", "white_candle_cake", "orange_candle_cake", "magenta_candle_cake", "light_blue_candle_cake", "yellow_candle_cake", "lime_candle_cake", "pink_candle_cake", "gray_candle_cake", "light_gray_candle_cake", "cyan_candle_cake", "purple_candle_cake", "blue_candle_cake", "brown_candle_cake", "green_candle_cake", "red_candle_cake", "black_candle_cake"],
    4: ["oxidized_copper_bulb", "waxed_oxidized_copper_bulb"],
    8: ["weathered_copper_bulb", "waxed_weathered_copper_bulb"],
    9: ["redstone_ore", "deepslate_redstone_ore"],
    12: ["exposed_copper_bulb", "waxed_exposed_copper_bulb"],
    13: ["copper_bulb", "waxed_copper_bulb"],
    14: ["cave_vines", "cave_vines_plant"],
    15: ["sea_pickle", "respawn_anchor", "trial_spawner", "vault", "ochre_froglight", "verdant_froglight", "pearlescent_froglight"],
}

for level in range(1, 16):
    ids = [f"minecraft:{name}" for name in LEVELS.get(level, "").split() if name]
    # Ensure IDs whose highest state has this level also appear in that level's tag.
    ids += [f"minecraft:{name.strip()}" for name in STATEFUL.get(level, [])]
    (TAG_ROOT / f"{level}.json").parent.mkdir(parents=True, exist_ok=True)
    (TAG_ROOT / f"{level}.json").write_text(json.dumps({"replace": False, "values": sorted(set(ids))}, indent=2) + "\n", encoding="utf-8")

FUNC_ROOT.mkdir(parents=True, exist_ok=True)
lines = ["# Reads the block's maximum light-emission level at this position.", "data modify storage yrh.map:_ sample.brightness set value 0"]
for level in range(1, 16):
    lines.append(f"execute if block ~ ~ ~ #yrh.map:light_level/{level} run data modify storage yrh.map:_ sample.brightness set value {level}")
(FUNC_ROOT / "root.mcfunction").write_text("\n".join(lines) + "\n", encoding="utf-8")
