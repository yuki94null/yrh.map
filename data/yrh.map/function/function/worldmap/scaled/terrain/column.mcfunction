execute if score #scale_probe_x yrh_map_tmp > #scale_probe_max_x yrh_map_tmp run return 0
execute store result storage yrh.map:_ worldmap.scale_probe.x int 1 run scoreboard players get #scale_probe_x yrh_map_tmp
execute store result score #scale_probe_chunk_hit yrh_map_tmp run function yrh.map:function/worldmap/scaled/terrain/check_chunk with storage yrh.map:_ worldmap.scale_probe
execute if score #scale_probe_chunk_hit yrh_map_tmp matches 1 run return 1
scoreboard players add #scale_probe_x yrh_map_tmp 16
return run function yrh.map:function/worldmap/scaled/terrain/column
