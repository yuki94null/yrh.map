execute if data entity @s data.yrhmap.WaypointPage unless data entity @s data.yrhmap{WaypointPage:0} run tag @s add yrh.map.waypoint_shared_pending
execute if entity @s[tag=yrh.map.waypoint_shared_pending] run return run tag @s add yrh.map.waypoint_visuals_pending
execute if data entity @s data.yrhmap.Owner unless data entity @s data.yrhmap{HideOtherWaypoints:1b} run tag @s add yrh.map.waypoint_visuals_pending
