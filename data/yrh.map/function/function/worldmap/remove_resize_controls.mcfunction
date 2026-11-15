$kill @e[type=minecraft:item_display,tag=yrh.map.waypoint_part,scores={yrh_map_id=$(map_id)}]
tag @s remove yrh.map.waypoint_buttons_present
$kill @e[tag=yrh.map.pan_control,tag=!yrh.map.foot_controller,scores={yrh_map_id=$(map_id)}]
$kill @e[tag=yrh.map.pan_label,tag=!yrh.map.foot_controller,scores={yrh_map_id=$(map_id)}]
$execute as @e[tag=yrh.map.map_backing,scores={yrh_map_id=$(map_id)}] run kill @s
