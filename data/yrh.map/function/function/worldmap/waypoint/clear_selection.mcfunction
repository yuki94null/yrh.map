data modify storage yrh.map:_ worldmap.waypoint_selection set value {color:"white"}
execute if data entity @s data.yrhmap.WaypointSelected run function yrh.map:function/worldmap/waypoint/refresh_selection
data remove entity @s data.yrhmap.WaypointSelected
