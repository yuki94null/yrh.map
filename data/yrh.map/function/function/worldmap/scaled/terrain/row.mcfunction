execute if score #scale_probe_z yrh_map_tmp > #scale_probe_max_z yrh_map_tmp run return 0
execute store result storage yrh.map:_ worldmap.scale_probe.z int 1 run scoreboard players get #scale_probe_z yrh_map_tmp
scoreboard players operation #scale_probe_x yrh_map_tmp = #scale_probe_min_x yrh_map_tmp
execute store result score #scale_probe_hit yrh_map_tmp run function yrh.map:function/worldmap/scaled/terrain/column
execute if score #scale_probe_hit yrh_map_tmp matches 1 run return 1
scoreboard players add #scale_probe_z yrh_map_tmp 16
return run function yrh.map:function/worldmap/scaled/terrain/row
