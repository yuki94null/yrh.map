execute if data entity @s data.yrhmap.Owner run tag @s add yrh.map.waypoint_visuals_pending
# Discard stale partial work before replacing the queue for the new center.
execute store result storage yrh.map:_ worldmap.owner.map_id int 1 run scoreboard players get @s yrh_map_id
function yrh.map:function/worldmap/cancel_owned_render with storage yrh.map:_ worldmap.owner
scoreboard players set #text_cache_hits yrh_map_tmp 0
execute unless data storage yrh.map:_ worldmap.pan unless data storage yrh.map:_ worldmap.resizing run function yrh.map:function/worldmap/mark_owned_cache with storage yrh.map:_ worldmap.owner
function yrh.map:function/worldmap/request_reference_area
