execute unless data storage yrh.map:waypoints public[0] run return run tag @s remove yrh.map.waypoint_public_pending
execute if data entity @s data.yrhmap{HideOtherWaypoints:1b} run return run tag @s remove yrh.map.waypoint_public_pending
data modify storage yrh.map:_ worldmap.waypoint_draw set value {shared:1b,overlay:1b}
data modify storage yrh.map:_ worldmap.waypoint_draw.owner set from entity @s data.yrhmap.Owner
execute unless entity @s[tag=yrh.map.rim_controls_hidden] run data modify storage yrh.map:_ worldmap.waypoint_draw.enable_hitbox set value 1b
execute store result storage yrh.map:_ worldmap.waypoint_draw.map_id int 1 run scoreboard players get @s yrh_map_id
data modify storage yrh.map:_ worldmap.owner_uuid set from storage yrh.map:_ worldmap.waypoint_draw.owner
function yrh.map:function/worldmap/owner_key
data modify storage yrh.map:_ worldmap.waypoint_draw merge from storage yrh.map:_ worldmap.owner_key
execute store result score #waypoint_public_count yrh_map_tmp run data get storage yrh.map:waypoints public
function yrh.map:function/worldmap/waypoint/markers/prepare_geometry
scoreboard players set #waypoint_public_budget yrh_map_tmp 16
function yrh.map:function/worldmap/waypoint/markers/refresh_public_loop
