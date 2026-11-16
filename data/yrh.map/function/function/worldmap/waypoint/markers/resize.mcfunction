execute if entity @s[tag=yrh.map.waypoint_visuals_pending] run return 0
execute unless entity @s[tag=yrh.map.waypoint_marker_slots] run return run tag @s add yrh.map.waypoint_visuals_pending
tag @s add yrh.map.waypoint_resize
function yrh.map:function/worldmap/waypoint/markers/refresh
tag @s remove yrh.map.waypoint_resize
