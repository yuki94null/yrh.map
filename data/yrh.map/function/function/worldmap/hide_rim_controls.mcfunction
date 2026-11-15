tag @s add yrh.map.rim_controls_hidden
$kill @e[type=minecraft:interaction,tag=yrh.map.pan_control,tag=!yrh.map.foot_controller,tag=!yrh.map.waypoint_part,scores={yrh_map_id=$(map_id)}]
$kill @e[type=minecraft:text_display,tag=yrh.map.pan_label,tag=!yrh.map.foot_controller,tag=!yrh.map.waypoint_part,scores={yrh_map_id=$(map_id)}]
