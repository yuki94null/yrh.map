data merge entity @s {Tags:["yrh.map.waypoint_marker","yrh.map.pan_control","yrh.map.waypoint_hitbox"],width:0f,height:0f,response:0b}
data modify entity @s data.yrhmap.Waypoint.x set from storage yrh.map:_ worldmap.waypoint_draw.pin.x
data modify entity @s data.yrhmap.Waypoint.z set from storage yrh.map:_ worldmap.waypoint_draw.pin.z
execute if score #waypoint_page yrh_map_tmp matches 1.. run data modify entity @s data.yrhmap.Waypoint.Shared set value 1b
execute store result score @s yrh_map_id run data get storage yrh.map:_ worldmap.waypoint_draw.map_id
