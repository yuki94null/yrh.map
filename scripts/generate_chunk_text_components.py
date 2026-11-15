"""Generate compact per-sample hex color caches after a 16x16 chunk scan."""
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
FUNC = ROOT / "data/yrh.map/function/function"
LOAD = FUNC / "load_one_chunk"
RENDER = FUNC / "render"

# Keep surface samples separate from the compact base and highlight color cache.
(LOAD / "root.mcfunction").write_text(
    "execute if dimension minecraft:overworld positioned ~-8 ~ ~-8 positioned ~72057594067927936 ~ ~72057594067927936 positioned ~-72057594067927936 ~ ~-72057594067927936 summon minecraft:marker run function yrh.map:function/load_one_chunk/enqueue_manual_scan\n",
    encoding="utf-8",
)
(LOAD / "scan_chunk.mcfunction").write_text(
    "execute summon marker run function yrh.map:function/load_one_chunk/get_pos_x\n"
    "data modify storage yrh.map:_ mcr.chunkX set from storage yrh.map:_ mcr.posX\n"
    "execute summon marker run function yrh.map:function/load_one_chunk/get_pos_z\n"
    "data modify storage yrh.map:_ mcr.chunkZ set from storage yrh.map:_ mcr.posZ\n"
    'execute unless data storage yrh.map:render "minecraft:over_world" run data modify storage yrh.map:render "minecraft:over_world" set value {}\n'
    'execute unless data storage yrh.map:render "minecraft:over_world".scale_1 run data modify storage yrh.map:render "minecraft:over_world".scale_1 set value {}\n'
    "execute store result storage yrh.map:_ terrain.manual_origin.start_revision int 1 run scoreboard players get #terrain_revision yrh_map_tmp\n"
    "function yrh.map:function/load_one_chunk/corner\n"
    "function yrh.map:function/render/bake_chunk with storage yrh.map:_ mcr\n"
    "data modify storage yrh.map:_ terrain.manual_origin.x set from storage yrh.map:_ mcr.chunkX\n"
    "data modify storage yrh.map:_ terrain.manual_origin.z set from storage yrh.map:_ mcr.chunkZ\n"
    "function yrh.map:function/worldmap/mark_color_chunk_complete with storage yrh.map:_ terrain.manual_origin\n",
    encoding="utf-8",
)

chunk_lines = ["# Bake cached samples into colored Text Components after the chunk scan."]
for dx in range(16):
    for dz in range(16):
        chunk_lines += [
            'data modify storage yrh.map:_ render.bake_pos.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"mcr.chunkX","fallback":0},%d]}' % dx,
            'data modify storage yrh.map:_ render.bake_pos.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"mcr.chunkZ","fallback":0},%d]}' % dz,
            "function yrh.map:function/render/bake_cell with storage yrh.map:_ render.bake_pos",
        ]
(RENDER / "bake_chunk.mcfunction").write_text("\n".join(chunk_lines) + "\n", encoding="utf-8")

(RENDER / "bake_cell.mcfunction").write_text(
    'function yrh.map:function/render/read_bake_sample\n'
    'scoreboard players set #color_changed yrh_map_tmp 0\n'
    '$execute unless data storage yrh.map:_ surface_access.sample store success score #color_changed yrh_map_tmp run data remove storage yrh.map:render "minecraft:over_world".scale_1.$(x).$(z)\n'
    'execute if score #color_changed yrh_map_tmp matches 1 run scoreboard players add #terrain_revision yrh_map_tmp 1\n'
    'execute if data storage yrh.map:_ surface_access.sample run function yrh.map:function/render/bake_present with storage yrh.map:_ render.bake_pos\n',
    encoding="utf-8",
)
# Convert base and highlight colors without changing the current surface sample.
bake_present = [
    'data modify storage yrh.map:_ hex_conversion.input set from storage yrh.map:_ surface_access.sample',
    'function yrh.map:function/decimal_to_hex/convert',
    'data modify storage yrh.map:_ render.bake_args set from storage yrh.map:_ hex_conversion.result',
]
for channel in "rgb":
    bake_present.append(
        f'data modify storage yrh.map:_ hex_conversion.input.{channel} set compute default float '
        f'{{type:"minecraft:min",inputs:[255.0,{{type:"minecraft:mul",inputs:'
        f'[{{type:"minecraft:storage",storage:"yrh.map:_",path:"hex_conversion.input.{channel}",fallback:0.0}},1.2]}}]}}'
    )
bake_present.append('function yrh.map:function/decimal_to_hex/convert')
for channel in "rgb":
    bake_present.append(
        f'data modify storage yrh.map:_ render.bake_args.h{channel} set from storage yrh.map:_ hex_conversion.result.{channel}'
    )
bake_present += [
    '$data modify storage yrh.map:_ render.bake_args.x set value $(x)',
    '$data modify storage yrh.map:_ render.bake_args.z set value $(z)',
    'data modify storage yrh.map:_ render.bake_args.height set value 0.0f',
    'data modify storage yrh.map:_ render.bake_args.height set from storage yrh.map:_ hex_conversion.input.height',
    'data modify storage yrh.map:_ render.bake_args.water set value 0',
    'execute if data storage yrh.map:_ hex_conversion.input{water:1b} run data modify storage yrh.map:_ render.bake_args.water set value 1',
    'function yrh.map:function/render/store_color with storage yrh.map:_ render.bake_args',
]
(RENDER / "bake_present.mcfunction").write_text("\n".join(bake_present) + "\n", encoding="utf-8")
(RENDER / "store_color.mcfunction").write_text(
    '$execute unless data storage yrh.map:render "minecraft:over_world".scale_1.$(x) run data modify storage yrh.map:render "minecraft:over_world".scale_1.$(x) set value {}\n'
    '$execute store success score #color_changed yrh_map_tmp run data modify storage yrh.map:render "minecraft:over_world".scale_1.$(x).$(z) set value {base:"$(r)$(g)$(b)",highlight:"$(hr)$(hg)$(hb)",height:$(height),water:$(water)b}\n'
    'execute if score #color_changed yrh_map_tmp matches 1 run scoreboard players add #terrain_revision yrh_map_tmp 1\n',
    encoding="utf-8",
)
