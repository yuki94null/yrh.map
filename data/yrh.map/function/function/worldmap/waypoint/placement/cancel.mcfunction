data remove entity @s data.yrhmap.WaypointPlacement
execute store result storage yrh.map:waypoint_placement hitbox.map_id int 1 run scoreboard players get @s yrh_map_id
function yrh.map:function/worldmap/waypoint/placement/remove_hitbox with storage yrh.map:waypoint_placement hitbox
