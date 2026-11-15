data modify storage yrh.map:_ worldmap.scale_probe.x0 set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.active_job.sx","fallback":0},{"type":"minecraft:mul","inputs":[-1,{"type":"minecraft:mod","left":{"type":"minecraft:add","inputs":[{"type":"minecraft:mod","left":{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.active_job.sx","fallback":0},"right":16},16]},"right":16}]},0]}
data modify storage yrh.map:_ worldmap.scale_probe.z0 set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.active_job.sz","fallback":0},{"type":"minecraft:mul","inputs":[-1,{"type":"minecraft:mod","left":{"type":"minecraft:add","inputs":[{"type":"minecraft:mod","left":{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.active_job.sz","fallback":0},"right":16},16]},"right":16}]},0]}
execute store result score #scale_probe_span yrh_map_tmp run data get storage yrh.map:_ worldmap.active_job.scale
scoreboard players operation #scale_probe_span yrh_map_tmp *= #sixteen yrh_map_tmp
execute store result score #scale_probe_min_x yrh_map_tmp run data get storage yrh.map:_ worldmap.scale_probe.x0
execute store result score #scale_probe_min_z yrh_map_tmp run data get storage yrh.map:_ worldmap.scale_probe.z0
scoreboard players operation #scale_probe_max_x yrh_map_tmp = #scale_probe_min_x yrh_map_tmp
scoreboard players operation #scale_probe_max_z yrh_map_tmp = #scale_probe_min_z yrh_map_tmp
scoreboard players operation #scale_probe_max_x yrh_map_tmp += #scale_probe_span yrh_map_tmp
scoreboard players operation #scale_probe_max_z yrh_map_tmp += #scale_probe_span yrh_map_tmp
scoreboard players set #scale_probe_center_offset yrh_map_tmp 2
scoreboard players operation #scale_probe_span yrh_map_tmp /= #scale_probe_center_offset yrh_map_tmp
scoreboard players operation #scale_probe_center_x yrh_map_tmp = #scale_probe_min_x yrh_map_tmp
scoreboard players operation #scale_probe_center_x yrh_map_tmp += #scale_probe_span yrh_map_tmp
scoreboard players operation #scale_probe_center_z yrh_map_tmp = #scale_probe_min_z yrh_map_tmp
scoreboard players operation #scale_probe_center_z yrh_map_tmp += #scale_probe_span yrh_map_tmp
execute store result storage yrh.map:_ worldmap.scale_probe.x int 1 run scoreboard players get #scale_probe_center_x yrh_map_tmp
execute store result storage yrh.map:_ worldmap.scale_probe.z int 1 run scoreboard players get #scale_probe_center_z yrh_map_tmp
execute store result score #scale_probe_chunk_hit yrh_map_tmp run function yrh.map:function/worldmap/scaled/terrain/check_chunk with storage yrh.map:_ worldmap.scale_probe
execute if score #scale_probe_chunk_hit yrh_map_tmp matches 1 run return 1
scoreboard players operation #scale_probe_z yrh_map_tmp = #scale_probe_min_z yrh_map_tmp
return run function yrh.map:function/worldmap/scaled/terrain/row
