$execute unless loaded $(x) 0 $(z) run return 0
$execute unless data storage yrh.map:_ terrain.candidate{manual:1b} if data storage yrh.map:_ terrain.offset{mode:"new"} if data storage yrh.map:render "minecraft:over_world".scale_1.chunks."$(x),$(z)"{complete:1b,scan_validated:1b} run return 0
scoreboard players operation #terrain_age yrh_map_tmp = #terrain_interval yrh_map_tmp
$execute if data storage yrh.map:render "minecraft:over_world".scale_1.chunks."$(x),$(z)"{complete:1b,scan_validated:1b} if data storage yrh.map:render "minecraft:over_world".scale_1.chunks."$(x),$(z)".last_scan run function yrh.map:function/load_one_chunk/get_scan_age with storage yrh.map:_ terrain.candidate
execute if score #terrain_age yrh_map_tmp matches 0.. if score #terrain_age yrh_map_tmp < #terrain_interval yrh_map_tmp run return 0
data modify storage yrh.map:_ terrain.job set from storage yrh.map:_ terrain.candidate
execute store result storage yrh.map:_ terrain.job.start_revision int 1 run scoreboard players get #terrain_revision yrh_map_tmp
data modify storage yrh.map:_ terrain.job.phase set value "scan"
execute if entity @a[tag=yrh.map.scan_trace] run function yrh.map:function/load_one_chunk/trace_scan_phase
scoreboard players set #terrain_cells yrh_map_tmp 0
function yrh.map:function/worldmap/clear_color_chunk_complete with storage yrh.map:_ terrain.job
execute unless data storage yrh.map:render "minecraft:over_world".scale_1 run data modify storage yrh.map:render "minecraft:over_world".scale_1 set value {}
