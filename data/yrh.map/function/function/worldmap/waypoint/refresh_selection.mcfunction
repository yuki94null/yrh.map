execute store result storage yrh.map:_ worldmap.waypoint_selection.map_id int 1 run scoreboard players get @s yrh_map_id
data modify storage yrh.map:_ worldmap.waypoint_selection.slot set from entity @s data.yrhmap.WaypointSelected
function yrh.map:function/worldmap/waypoint/color_slot with storage yrh.map:_ worldmap.waypoint_selection
