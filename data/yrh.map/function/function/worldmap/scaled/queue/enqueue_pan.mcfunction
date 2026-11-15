function yrh.map:function/worldmap/read_pan_reference
$tag @e[type=minecraft:text_display,tag=yrh.map.worldmap_chunk_display,tag=yrh.map.worldmap_cache_pending,scores={yrh_map_id=$(map_id)}] add yrh.map.scaled_pending
$execute as @e[type=minecraft:text_display,tag=yrh.map.worldmap_chunk_display,tag=yrh.map.scaled_pending,scores={yrh_map_id=$(map_id)}] run function yrh.map:function/worldmap/scaled/queue/enqueue_pending_tile
