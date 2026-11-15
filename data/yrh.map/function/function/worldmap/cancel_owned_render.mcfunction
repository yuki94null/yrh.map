$data remove storage yrh.map:_ worldmap.load_queue[{map_id:$(map_id)}]
$execute unless data storage yrh.map:_ worldmap.active_job{map_id:$(map_id)} run return 0
tag @e[type=minecraft:text_display,tag=yrh.map.worldmap_render_target] remove yrh.map.worldmap_render_target
data remove storage yrh.map:_ worldmap.active_job
data remove storage yrh.map:_ worldmap.stage_snapshot
