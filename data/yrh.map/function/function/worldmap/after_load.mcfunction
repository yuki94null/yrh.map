execute store result score #loaded_x yrh_map_tmp run data get storage yrh.map:_ worldmap.active_job.x
execute store result score #loaded_z yrh_map_tmp run data get storage yrh.map:_ worldmap.active_job.z
data modify storage yrh.map:_ worldmap.debug.last_after_load set value {x:0,z:0}
execute store result storage yrh.map:_ worldmap.debug.last_after_load.x int 1 run scoreboard players get #loaded_x yrh_map_tmp
execute store result storage yrh.map:_ worldmap.debug.last_after_load.z int 1 run scoreboard players get #loaded_z yrh_map_tmp
data modify storage yrh.map:_ worldmap.debug.tile_checks set value []
function yrh.map:function/worldmap/find_render_tiles with storage yrh.map:_ worldmap.active_job
