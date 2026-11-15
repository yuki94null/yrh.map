scoreboard players add @s yrh_map_tx 1
execute if score @s yrh_map_tx > #map_radius yrh_map_tmp run tag @s add yrh.map.pan_edge
execute if entity @s[tag=yrh.map.pan_edge] run scoreboard players operation @s yrh_map_tx = #map_min yrh_map_tmp
execute store result entity @s transformation.translation[0] float 1 run scoreboard players get @s yrh_map_tx
execute if entity @s[tag=yrh.map.pan_edge] run function yrh.map:function/worldmap/refresh_pan_edge
tag @s remove yrh.map.pan_edge
