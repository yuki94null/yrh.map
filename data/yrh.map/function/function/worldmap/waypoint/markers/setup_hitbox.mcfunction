data merge entity @s {Tags:["yrh.map.waypoint_marker","yrh.map.pan_control","yrh.map.waypoint_hitbox"],width:0f,height:0f,response:0b}
execute if data storage yrh.map:_ worldmap.waypoint_draw{enable_hitbox:1b} run data merge entity @s {width:0.36f,height:0.07f}
data modify entity @s data.yrhmap.Waypoint.x set from storage yrh.map:_ worldmap.waypoint_draw.pin.x
data modify entity @s data.yrhmap.Waypoint.z set from storage yrh.map:_ worldmap.waypoint_draw.pin.z
execute if data storage yrh.map:_ worldmap.waypoint_draw{shared:1b} run data modify entity @s data.yrhmap.Waypoint.Shared set value 1b
function yrh.map:function/worldmap/waypoint/markers/bind_part with storage yrh.map:_ worldmap.waypoint_draw
