execute if entity @s[tag=yrh.map.size_5] run return 2
execute unless entity @s[tag=yrh.map.size_7] unless entity @s[tag=yrh.map.size_9] unless entity @s[tag=yrh.map.size_11] unless entity @s[tag=yrh.map.size_13] run return 2
scoreboard players set #resize_next yrh_map_tmp 5
execute if entity @s[tag=yrh.map.size_13] run scoreboard players set #resize_next yrh_map_tmp 11
execute if entity @s[tag=yrh.map.size_11] run scoreboard players set #resize_next yrh_map_tmp 9
execute if entity @s[tag=yrh.map.size_9] run scoreboard players set #resize_next yrh_map_tmp 7
execute if entity @s[tag=yrh.map.size_7] run scoreboard players set #resize_next yrh_map_tmp 5
return run function yrh.map:function/worldmap/apply_map_size
