function yrh.map:function/worldmap/compute_tile_target
execute store result storage yrh.map:_ worldmap.queue_candidate.x int 1 run scoreboard players get #target_x yrh_map_tmp
execute store result storage yrh.map:_ worldmap.queue_candidate.z int 1 run scoreboard players get #target_z yrh_map_tmp
function yrh.map:function/worldmap/scaled/queue/enqueue
