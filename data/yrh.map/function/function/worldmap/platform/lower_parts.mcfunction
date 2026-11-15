$execute as @e[type=minecraft:text_display,tag=yrh.map.worldmap_chunk_display,tag=!yrh.map.foot_controller,scores={yrh_map_id=$(map_id)}] at @s run tp @s ~ ~-0.09 ~
$execute as @e[type=minecraft:text_display,tag=yrh.map.pan_label,tag=!yrh.map.foot_controller,scores={yrh_map_id=$(map_id)}] at @s run tp @s ~ ~-0.09 ~
$execute as @e[type=minecraft:interaction,tag=yrh.map.pan_control,tag=!yrh.map.foot_controller,scores={yrh_map_id=$(map_id)}] at @s run tp @s ~ ~-0.09 ~
$execute as @e[type=minecraft:item_display,tag=yrh.map.map_backing,tag=!yrh.map.foot_controller,scores={yrh_map_id=$(map_id)}] at @s run tp @s ~ ~-0.09 ~
$execute as @e[type=minecraft:item_display,tag=yrh.map.map_backing,scores={yrh_map_id=$(map_id)}] run data modify entity @s transformation.scale[1] set value 0f
$execute as @e[type=minecraft:item_display,tag=yrh.map.map_backing,scores={yrh_map_id=$(map_id)}] run data modify entity @s transformation.translation[1] set value 0.985f
