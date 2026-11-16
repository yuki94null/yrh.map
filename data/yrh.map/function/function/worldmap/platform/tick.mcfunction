function yrh.map:function/worldmap/platform/tick_replacements
# Vanilla reduces still_timeout to ten ticks when someone walks over a ghast.
scoreboard players add #map_floor_tick yrh_map_tmp 1
execute unless score #map_floor_tick yrh_map_tmp matches 4.. run return 0
scoreboard players set #map_floor_tick yrh_map_tmp 0
execute in minecraft:overworld as @e[type=minecraft:interaction,tag=yrh.map.worldmap_anchor,tag=!yrh.map.backing_v9,scores={yrh_map_id=1..}] at @s if entity @a[distance=..16,limit=1] run function yrh.map:function/worldmap/update_map_backing
execute in minecraft:overworld as @e[type=minecraft:interaction,tag=yrh.map.worldmap_anchor,tag=yrh.map.platform_v1,tag=!yrh.map.floor_height_v2,scores={yrh_map_id=1..}] at @s if entity @a[distance=..16,limit=1] run function yrh.map:function/worldmap/platform/update_height
execute in minecraft:overworld as @e[type=minecraft:interaction,tag=yrh.map.worldmap_anchor,tag=!yrh.map.fixed_indicator_v1,scores={yrh_map_id=1..},nbt={data:{yrhmap:{Pinned:1b}}}] run function yrh.map:function/worldmap/refresh_fixed_indicator
execute in minecraft:overworld as @e[type=minecraft:happy_ghast,tag=yrh.map.platform] at @s if entity @a[distance=..9,limit=1] run function yrh.map:function/worldmap/platform/keep_still
