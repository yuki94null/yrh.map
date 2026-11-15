scoreboard players add #owner_distance_tick yrh_map_tmp 1
execute unless score #owner_distance_tick yrh_map_tmp matches 20.. run return 0
scoreboard players set #owner_distance_tick yrh_map_tmp 0
execute in minecraft:overworld as @e[type=minecraft:interaction,tag=yrh.map.worldmap_anchor,scores={yrh_map_id=1..}] at @s if data entity @s data.yrhmap.Owner run function yrh.map:function/worldmap/check_owner_distance with entity @s data.yrhmap
