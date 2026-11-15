$execute as @e[type=!minecraft:player,tag=!yrh.map.platform_retired,scores={yrh_map_id=$(map_id)}] at @s run tp @s ~ ~-0.04 ~
$execute as @e[type=minecraft:happy_ghast,tag=yrh.map.platform,scores={yrh_map_id=$(map_id)}] run data modify entity @s data.yrhmap.PlatformPos set from entity @s Pos
