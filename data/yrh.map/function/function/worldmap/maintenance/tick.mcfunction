# Shared one-second maintenance; retain the timer name across reloads.
scoreboard players add #owner_distance_tick yrh_map_tmp 1
execute unless score #owner_distance_tick yrh_map_tmp matches 20.. run return 0
scoreboard players set #owner_distance_tick yrh_map_tmp 0
execute in minecraft:overworld as @e[type=minecraft:interaction,tag=yrh.map.worldmap_anchor,scores={yrh_map_id=1..}] at @s run function yrh.map:function/worldmap/maintenance/anchor
# Resume replacements whose chunks have loaded again.
execute in minecraft:overworld if entity @e[type=minecraft:happy_ghast,tag=yrh.map.platform_replaced] run schedule function yrh.map:function/worldmap/platform/tick_replacements 1t replace
