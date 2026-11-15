tag @s add yrh.map.waypoint_visuals_pending
execute if data entity @s data.yrhmap{HideOtherWaypoints:1b} run return run data remove entity @s data.yrhmap.HideOtherWaypoints
data modify entity @s data.yrhmap.HideOtherWaypoints set value 1b
