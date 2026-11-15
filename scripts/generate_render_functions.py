"""Generate the 16x16 surface-map rendering functions."""
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
FUNC = ROOT / "data/yrh.map/function/function/render"
FUNC.mkdir(parents=True, exist_ok=True)

root = [
    "# Draw a 16x16 map from offset -8..7 around the player's floored block position.",
    "function yrh.map:function/get_pos/root",
    "data modify storage yrh.map:_ render set value {position:{}}",
]
for dz in range(-8, 8):
    for dx in range(-8, 8):
        root.append(
            'data modify storage yrh.map:_ render.position.x set compute default integer '
            '{"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},%d]}' % dx
        )
        root.append(
            'data modify storage yrh.map:_ render.position.z set compute default integer '
            '{"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},%d]}' % dz
        )
        root.append("data modify storage yrh.map:_ render.position.i set value %d" % (dx + 8))
        root.append("function yrh.map:function/render/cell with storage yrh.map:_ render.position")
    # Emit a bounded 17-cell component array for this row, then start the next.
    root.append("function yrh.map:function/render/show with storage yrh.map:_ render")
(FUNC / "root.mcfunction").write_text("\n".join(root) + "\n", encoding="utf-8")

cell = [
    "data remove storage yrh.map:_ render.mergeable",
    '# Use the separately cached, compact render color when available.',
    '$execute if data storage yrh.map:render "minecraft:over_world".scale_1.$(x).$(z).base run return run function yrh.map:function/render/cell_present with storage yrh.map:_ render.position',
    '$data modify storage yrh.map:_ render.c$(i) set value {text:"■",font:"yrh.map:map_pixel",color:"#000000",shadow_color:0}',
    '$execute if data storage yrh.map:render "minecraft:over_world".scale_1.$(x).$(z) unless data storage yrh.map:render "minecraft:over_world".scale_1.$(x).$(z).base run function yrh.map:function/render/cell_legacy with storage yrh.map:_ render.position',
    '$execute unless data storage yrh.map:render "minecraft:over_world".scale_1.$(x).$(z) if data storage yrh.map:surface "minecraft:over_world".$(x)[].$(z) run function yrh.map:function/render/cache_missing with storage yrh.map:_ render.position',
    '$execute unless data storage yrh.map:render "minecraft:over_world".scale_1.$(x).$(z) if data storage yrh.map:surface "minecraft:over_world".$(x)[].$(z).color run function yrh.map:function/render/cell_surface_color with storage yrh.map:_ render.position',
    '$execute unless data storage yrh.map:render "minecraft:over_world".scale_1.$(x).$(z) if data storage yrh.map:surface "minecraft:over_world".$(x)[].$(z).component run data modify storage yrh.map:_ render.c$(i) set from storage yrh.map:surface "minecraft:over_world".$(x)[].$(z).component',
]
(FUNC / "cell.mcfunction").write_text("\n".join(cell) + "\n", encoding="utf-8")

cache_missing = [
    'execute unless data storage yrh.map:render "minecraft:over_world" run data modify storage yrh.map:render "minecraft:over_world" set value {}',
    'execute unless data storage yrh.map:render "minecraft:over_world".scale_1 run data modify storage yrh.map:render "minecraft:over_world".scale_1 set value {}',
    "data modify storage yrh.map:_ render.bake_pos.x set from storage yrh.map:_ render.position.x",
    "data modify storage yrh.map:_ render.bake_pos.z set from storage yrh.map:_ render.position.z",
    "function yrh.map:function/render/bake_cell with storage yrh.map:_ render.bake_pos",
    "execute if data storage yrh.map:_ surface_access.sample run function yrh.map:function/render/cell_present with storage yrh.map:_ render.position",
]
(FUNC / "cache_missing.mcfunction").write_text("\n".join(cache_missing) + "\n", encoding="utf-8")

present = [
    '$data modify storage yrh.map:_ render.args.color set from storage yrh.map:render "minecraft:over_world".scale_1.$(x).$(z).base',
    'data modify storage yrh.map:_ render.args.i set from storage yrh.map:_ render.position.i',
    'data modify storage yrh.map:_ render.args.glyph set value "■"',
    'execute if data storage yrh.map:_ worldmap.active_job{quality:"flat"} run return run function yrh.map:function/render/append_cell with storage yrh.map:_ render.args',
    '$execute if data storage yrh.map:render "minecraft:over_world".scale_1.$(x).$(z){water:1b} run return run function yrh.map:function/render/append_cell with storage yrh.map:_ render.args',
    '$execute if data storage yrh.map:render "minecraft:over_world".scale_1.$(x).$(z){water:1} run return run function yrh.map:function/render/append_cell with storage yrh.map:_ render.args',
    '$execute unless data storage yrh.map:render "minecraft:over_world".scale_1.$(x).$(z).water if data storage yrh.map:surface "minecraft:over_world".$(x)[].$(z){water:1b} run return run function yrh.map:function/render/append_cell with storage yrh.map:_ render.args',
    'scoreboard players set #center yrh_map_tmp 0',
    '$execute if data storage yrh.map:render "minecraft:over_world".scale_1.$(x).$(z).height store result score #center yrh_map_tmp run data get storage yrh.map:render "minecraft:over_world".scale_1.$(x).$(z).height 1',
    '$execute unless data storage yrh.map:render "minecraft:over_world".scale_1.$(x).$(z).height if data storage yrh.map:surface "minecraft:over_world".$(x)[].$(z).height store result score #center yrh_map_tmp run data get storage yrh.map:surface "minecraft:over_world".$(x)[].$(z).height 1',
    'scoreboard players set #shadow yrh_map_tmp 0',
    'scoreboard players set #highlight yrh_map_tmp 0',
    'data modify storage yrh.map:_ render.edge_pos.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"render.position.x","fallback":0},0]}',
    'data modify storage yrh.map:_ render.edge_pos.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"render.position.z","fallback":0},-1]}',
    'data modify storage yrh.map:_ render.edge_pos.bit set value 1',
    'function yrh.map:function/render/edge_neighbor with storage yrh.map:_ render.edge_pos',
    'data modify storage yrh.map:_ render.edge_pos.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"render.position.x","fallback":0},-1]}',
    'data modify storage yrh.map:_ render.edge_pos.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"render.position.z","fallback":0},0]}',
    'data modify storage yrh.map:_ render.edge_pos.bit set value 8',
    'function yrh.map:function/render/edge_neighbor with storage yrh.map:_ render.edge_pos',
    'execute if score #shadow yrh_map_tmp matches 0 if score #highlight yrh_map_tmp matches 0 run return run function yrh.map:function/render/append_cell with storage yrh.map:_ render.args',
    '$data modify storage yrh.map:_ render.args.highlight set from storage yrh.map:render "minecraft:over_world".scale_1.$(x).$(z).highlight',
    'execute store result storage yrh.map:_ render.args.shadow_mask int 1 run scoreboard players get #shadow yrh_map_tmp',
    'execute store result storage yrh.map:_ render.args.highlight_mask int 1 run scoreboard players get #highlight yrh_map_tmp',
    'function yrh.map:function/render/select_glyph with storage yrh.map:_ render.args',
]
(FUNC / "cell_present.mcfunction").write_text("\n".join(present) + "\n", encoding="utf-8")

neighbor = [
    'execute store result score #bit yrh_map_tmp run data get storage yrh.map:_ render.edge_pos.bit 1',
    'scoreboard players operation #neighbor yrh_map_tmp = #center yrh_map_tmp',
    '$execute if data storage yrh.map:render "minecraft:over_world".scale_1.$(x).$(z).height store result score #neighbor yrh_map_tmp run data get storage yrh.map:render "minecraft:over_world".scale_1.$(x).$(z).height 1',
    '$execute unless data storage yrh.map:render "minecraft:over_world".scale_1.$(x).$(z).height if data storage yrh.map:surface "minecraft:over_world".$(x)[].$(z).height store result score #neighbor yrh_map_tmp run data get storage yrh.map:surface "minecraft:over_world".$(x)[].$(z).height 1',
    'scoreboard players operation #diff yrh_map_tmp = #neighbor yrh_map_tmp',
    'scoreboard players operation #diff yrh_map_tmp -= #center yrh_map_tmp',
    'execute if score #diff yrh_map_tmp matches 1.. run scoreboard players operation #shadow yrh_map_tmp += #bit yrh_map_tmp',
    'execute if score #diff yrh_map_tmp matches ..-1 run scoreboard players operation #highlight yrh_map_tmp += #bit yrh_map_tmp',
]
(FUNC / "edge_neighbor.mcfunction").write_text("\n".join(neighbor) + "\n", encoding="utf-8")

(FUNC / "select_glyph.mcfunction").write_text(
    '$function yrh.map:function/render/glyph/shadow/$(shadow_mask) with storage yrh.map:_ render.args\n'
    '$function yrh.map:function/render/glyph/highlight/$(highlight_mask) with storage yrh.map:_ render.args\n'
    "function yrh.map:function/render/append_shaded_cell with storage yrh.map:_ render.args\n",
    encoding="utf-8",
)
for mask in range(16):
    (FUNC / "glyph" / f"{mask}.mcfunction").parent.mkdir(parents=True, exist_ok=True)
    (FUNC / "glyph" / f"{mask}.mcfunction").write_text(
        "# Legacy glyph selector retained for existing references.\n",
        encoding="utf-8",
    )
    (FUNC / "glyph" / "shadow" / f"{mask}.mcfunction").parent.mkdir(parents=True, exist_ok=True)
    (FUNC / "glyph" / "shadow" / f"{mask}.mcfunction").write_text(
        f'data modify storage yrh.map:_ render.args.shadow_glyph set value "{chr(0xE010 + mask)}"\n',
        encoding="utf-8",
    )
    (FUNC / "glyph" / "highlight" / f"{mask}.mcfunction").parent.mkdir(parents=True, exist_ok=True)
    (FUNC / "glyph" / "highlight" / f"{mask}.mcfunction").write_text(
        f'data modify storage yrh.map:_ render.args.highlight_glyph set value "{chr(0xE020 + mask)}"\n',
        encoding="utf-8",
    )

(FUNC / "cell_surface_color.mcfunction").write_text(
    '$data modify storage yrh.map:_ render.args.color set from storage yrh.map:surface "minecraft:over_world".$(x)[].$(z).color\n'
    "data modify storage yrh.map:_ render.args.i set from storage yrh.map:_ render.position.i\n"
    'data modify storage yrh.map:_ render.args.glyph set value "■"\n'
    "function yrh.map:function/render/append_cell with storage yrh.map:_ render.args\n",
    encoding="utf-8",
)

brightness = [
    "# Diffuse light over the cached map; brightness stays within 0..15.",
    "data modify storage yrh.map:_ render.max_light set from storage yrh.map:_ sample.brightness",
]
# Keep per-render command count below Minecraft's function command-chain limit.
for distance in range(1, 3):
    for dz in range(-distance, distance + 1):
        dx_abs = distance - abs(dz)
        dxs = [0] if dx_abs == 0 else [-dx_abs, dx_abs]
        for dx in dxs:
            brightness += [
                'data modify storage yrh.map:_ render.neighbor.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"render.position.x","fallback":0},%d]}' % dx,
                'data modify storage yrh.map:_ render.neighbor.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"render.position.z","fallback":0},%d]}' % dz,
                "data modify storage yrh.map:_ render.neighbor.distance set value %d" % distance,
                "function yrh.map:function/render/light_neighbor with storage yrh.map:_ render.neighbor",
            ]
brightness += [
    "data modify storage yrh.map:_ sample.brightness set from storage yrh.map:_ render.max_light",
    "function yrh.map:function/compute_brightness/root",
]
(FUNC / "brightness.mcfunction").write_text("\n".join(brightness) + "\n", encoding="utf-8")

light_neighbor = [
    "data modify storage yrh.map:_ render.light set value 0",
    '$execute if data storage yrh.map:surface "minecraft:over_world".$(x)[].$(z).brightness run data modify storage yrh.map:_ render.light set from storage yrh.map:surface "minecraft:over_world".$(x)[].$(z).brightness',
    'data modify storage yrh.map:_ render.max_light set compute default integer {"type":"minecraft:max","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"render.max_light","fallback":0},{"type":"minecraft:max","inputs":[0,{"type":"minecraft:sub","left":{"type":"minecraft:storage","storage":"yrh.map:_","path":"render.light","fallback":0},"right":{"type":"minecraft:storage","storage":"yrh.map:_","path":"render.neighbor.distance","fallback":0}}]}]}',
]
(FUNC / "light_neighbor.mcfunction").write_text("\n".join(light_neighbor) + "\n", encoding="utf-8")

(FUNC / "append_cell.mcfunction").write_text(
    "data modify storage yrh.map:_ render.mergeable set value 1b\n"
    '$data modify storage yrh.map:_ render.c$(i) set value {text:"$(glyph)",font:"yrh.map:map_pixel",color:"#$(color)",shadow_color:0}\n',
    encoding="utf-8",
)
(FUNC / "append_shaded_cell.mcfunction").write_text(
    '$data modify storage yrh.map:_ render.c$(i) set value {text:"",extra:[{text:"■",font:"yrh.map:map_pixel",color:"#$(color)",shadow_color:0},{text:"$(shadow_glyph)",font:"yrh.map:map_pixel",color:"#$(color)",shadow_color:0},{text:"$(highlight_glyph)",font:"yrh.map:map_pixel",color:"#$(highlight)",shadow_color:0}]}\n',
    encoding="utf-8",
)
(FUNC / "cell_legacy.mcfunction").write_text(
    '$data modify storage yrh.map:_ render.args.color set from storage yrh.map:render "minecraft:over_world".scale_1.$(x).$(z)\n'
    "data modify storage yrh.map:_ render.args.i set from storage yrh.map:_ render.position.i\n"
    'data modify storage yrh.map:_ render.args.glyph set value "■"\n'
    "function yrh.map:function/render/append_cell with storage yrh.map:_ render.args\n",
    encoding="utf-8",
)
components = ",".join(f"$(c{i})" for i in range(16))
(FUNC / "show.mcfunction").write_text(
    f"$tellraw @s [{components}]\n", encoding="utf-8"
)
