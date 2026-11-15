tag @s add yrh.map.rim_controls_hidden
$execute as @e[type=minecraft:interaction,tag=yrh.map.waypoint_hitbox,scores={yrh_map_id=$(map_id)}] run data merge entity @s {width:0f,height:0f}
$kill @e[type=minecraft:interaction,tag=yrh.map.pan_control,tag=!yrh.map.foot_controller,tag=!yrh.map.waypoint_part,tag=!yrh.map.waypoint_hitbox,tag=!yrh.map.waypoint_placement,scores={yrh_map_id=$(map_id)}]
$kill @e[type=minecraft:text_display,tag=yrh.map.pan_label,tag=!yrh.map.foot_controller,tag=!yrh.map.waypoint_part,scores={yrh_map_id=$(map_id)}]
