# Vanilla reduces still_timeout to ten ticks when someone walks over a ghast.
scoreboard players add #map_floor_tick yrh_map_tmp 1
execute unless score #map_floor_tick yrh_map_tmp matches 4.. run return 0
scoreboard players set #map_floor_tick yrh_map_tmp 0
execute in minecraft:overworld as @e[type=minecraft:happy_ghast,tag=yrh.map.platform] at @s if entity @a[distance=..9,limit=1] run function yrh.map:function/worldmap/platform/keep_still
