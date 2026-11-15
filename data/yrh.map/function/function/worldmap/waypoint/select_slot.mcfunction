function yrh.map:function/worldmap/waypoint/clear_selection
data modify entity @s data.yrhmap.WaypointSelected set from storage yrh.map:_ worldmap.waypoint.slot
data modify storage yrh.map:_ worldmap.waypoint_selection set value {color:"yellow"}
function yrh.map:function/worldmap/waypoint/refresh_selection
