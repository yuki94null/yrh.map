execute if entity @s[tag=yrh.map.size_13] run return 2
scoreboard players set #resize_next yrh_map_tmp 5
execute if entity @s[tag=yrh.map.size_5] run scoreboard players set #resize_next yrh_map_tmp 7
execute if entity @s[tag=yrh.map.size_7] run scoreboard players set #resize_next yrh_map_tmp 9
execute if entity @s[tag=yrh.map.size_9] run scoreboard players set #resize_next yrh_map_tmp 11
execute if entity @s[tag=yrh.map.size_11] run scoreboard players set #resize_next yrh_map_tmp 13
scoreboard players operation #resize_requested yrh_map_tmp = #resize_next yrh_map_tmp
execute if score #resize_next yrh_map_tmp matches 5 positioned ~ ~1.001 ~-0.5 align xyz run function yrh.map:function/worldmap/check_space_5
execute if score #resize_next yrh_map_tmp matches 7 positioned ~ ~1.001 ~-0.5 align xyz run function yrh.map:function/worldmap/check_space_7
execute if score #resize_next yrh_map_tmp matches 9 positioned ~ ~1.001 ~-0.5 align xyz run function yrh.map:function/worldmap/check_space_9
execute if score #resize_next yrh_map_tmp matches 11 positioned ~ ~1.001 ~-0.5 align xyz run function yrh.map:function/worldmap/check_space_11
execute if score #resize_next yrh_map_tmp matches 13 positioned ~ ~1.001 ~-0.5 align xyz run function yrh.map:function/worldmap/check_space_13
execute unless score #resize_next yrh_map_tmp = #resize_requested yrh_map_tmp run return 0
return run function yrh.map:function/worldmap/apply_map_size
