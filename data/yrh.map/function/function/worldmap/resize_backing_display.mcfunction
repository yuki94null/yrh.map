$execute as @e[type=minecraft:text_display,tag=yrh.map.map_backing,scores={yrh_map_id=$(map_id)}] run data modify entity @s transformation.scale set value [$(scale)f,$(scale)f,1f]
$execute as @e[type=minecraft:interaction,tag=yrh.map.map_click_shield,scores={yrh_map_id=$(map_id)}] run data modify entity @s width set value $(width)f
