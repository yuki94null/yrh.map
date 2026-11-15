data modify storage yrh.map:_ worldmap.pan set value 1b
scoreboard players set #map_radius yrh_map_tmp 1
execute if entity @s[tag=yrh.map.size_5] run scoreboard players set #map_radius yrh_map_tmp 2
execute if entity @s[tag=yrh.map.size_9] run scoreboard players set #map_radius yrh_map_tmp 4
execute if entity @s[tag=yrh.map.size_11] run scoreboard players set #map_radius yrh_map_tmp 5
execute if entity @s[tag=yrh.map.size_13] run scoreboard players set #map_radius yrh_map_tmp 6
execute if entity @s[tag=yrh.map.size_7] run scoreboard players set #map_radius yrh_map_tmp 3
scoreboard players set #map_min yrh_map_tmp 0
scoreboard players operation #map_min yrh_map_tmp -= #map_radius yrh_map_tmp
