tag @s remove yrh.map.waypoint_visuals_pending
tag @s remove yrh.map.waypoint_public_pending
execute unless data entity @s data.yrhmap.Owner run return 0
execute if entity @s[tag=yrh.map.waypoint_shared_pending] run function yrh.map:function/worldmap/waypoint/refresh_slots
tag @s remove yrh.map.waypoint_shared_pending
function yrh.map:function/worldmap/waypoint/markers/refresh_visibility_label
function yrh.map:function/worldmap/waypoint/markers/prepare_slots
execute if entity @s[tag=yrh.map.waypoint_resize] run function yrh.map:function/worldmap/waypoint/markers/mark_stale with storage yrh.map:_ worldmap.waypoint_draw
execute unless entity @s[tag=yrh.map.waypoint_resize] run function yrh.map:function/worldmap/waypoint/markers/clear with storage yrh.map:_ worldmap.waypoint_draw
function yrh.map:function/worldmap/waypoint/markers/prepare_geometry
function yrh.map:function/worldmap/waypoint/markers/refresh_loop
execute if entity @s[tag=yrh.map.waypoint_resize] run function yrh.map:function/worldmap/waypoint/markers/remove_stale with storage yrh.map:_ worldmap.waypoint_draw
tag @s add yrh.map.waypoint_marker_slots
execute unless entity @s[tag=yrh.map.rim_controls_hidden] run function yrh.map:function/worldmap/waypoint/markers/enable_hitboxes with storage yrh.map:_ worldmap.waypoint_draw
execute unless data entity @s data.yrhmap{HideOtherWaypoints:1b} if data storage yrh.map:waypoints public[0] run scoreboard players set @s yrh_map_wp_public 0
execute unless data entity @s data.yrhmap{HideOtherWaypoints:1b} if data storage yrh.map:waypoints public[0] run tag @s add yrh.map.waypoint_public_pending
