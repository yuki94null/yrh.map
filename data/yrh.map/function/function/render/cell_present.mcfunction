$data modify storage yrh.map:_ render.args.color set from storage yrh.map:render "minecraft:over_world".scale_1.$(x).$(z).base
data modify storage yrh.map:_ render.args.i set from storage yrh.map:_ render.position.i
data modify storage yrh.map:_ render.args.glyph set value "■"
execute if data storage yrh.map:_ worldmap.active_job{quality:"flat"} run return run function yrh.map:function/render/append_cell with storage yrh.map:_ render.args
$execute if data storage yrh.map:render "minecraft:over_world".scale_1.$(x).$(z){water:1b} run return run function yrh.map:function/render/append_cell with storage yrh.map:_ render.args
$execute if data storage yrh.map:render "minecraft:over_world".scale_1.$(x).$(z){water:1} run return run function yrh.map:function/render/append_cell with storage yrh.map:_ render.args
$execute unless data storage yrh.map:render "minecraft:over_world".scale_1.$(x).$(z).water if data storage yrh.map:surface "minecraft:over_world".$(x)[].$(z){water:1b} run return run function yrh.map:function/render/append_cell with storage yrh.map:_ render.args
scoreboard players set #center yrh_map_tmp 0
$execute if data storage yrh.map:render "minecraft:over_world".scale_1.$(x).$(z).height store result score #center yrh_map_tmp run data get storage yrh.map:render "minecraft:over_world".scale_1.$(x).$(z).height 1
$execute unless data storage yrh.map:render "minecraft:over_world".scale_1.$(x).$(z).height if data storage yrh.map:surface "minecraft:over_world".$(x)[].$(z).height store result score #center yrh_map_tmp run data get storage yrh.map:surface "minecraft:over_world".$(x)[].$(z).height 1
scoreboard players set #shadow yrh_map_tmp 0
scoreboard players set #highlight yrh_map_tmp 0
data modify storage yrh.map:_ render.edge_pos.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"render.position.x","fallback":0},0]}
data modify storage yrh.map:_ render.edge_pos.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"render.position.z","fallback":0},-1]}
data modify storage yrh.map:_ render.edge_pos.bit set value 1
function yrh.map:function/render/edge_neighbor with storage yrh.map:_ render.edge_pos
data modify storage yrh.map:_ render.edge_pos.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"render.position.x","fallback":0},-1]}
data modify storage yrh.map:_ render.edge_pos.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"render.position.z","fallback":0},0]}
data modify storage yrh.map:_ render.edge_pos.bit set value 8
function yrh.map:function/render/edge_neighbor with storage yrh.map:_ render.edge_pos
execute if score #shadow yrh_map_tmp matches 0 if score #highlight yrh_map_tmp matches 0 run return run function yrh.map:function/render/append_cell with storage yrh.map:_ render.args
$data modify storage yrh.map:_ render.args.highlight set from storage yrh.map:render "minecraft:over_world".scale_1.$(x).$(z).highlight
execute store result storage yrh.map:_ render.args.shadow_mask int 1 run scoreboard players get #shadow yrh_map_tmp
execute store result storage yrh.map:_ render.args.highlight_mask int 1 run scoreboard players get #highlight yrh_map_tmp
function yrh.map:function/render/select_glyph with storage yrh.map:_ render.args
