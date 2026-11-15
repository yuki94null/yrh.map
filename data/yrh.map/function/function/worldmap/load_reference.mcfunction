data remove entity @s interaction
execute store result storage yrh.map:_ worldmap.owner.map_id int 1 run scoreboard players get @s yrh_map_id
function yrh.map:function/worldmap/cancel_owned_render with storage yrh.map:_ worldmap.owner
data remove storage yrh.map:_ worldmap.pan
data modify storage yrh.map:_ worldmap.reload set value 1b
function yrh.map:function/worldmap/request_reference_area
execute store result storage yrh.map:_ worldmap.debug.reload_queued int 1 run data get storage yrh.map:_ worldmap.load_queue
data remove storage yrh.map:_ worldmap.reload
