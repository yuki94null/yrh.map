execute in minecraft:overworld run scoreboard players remove @e[type=minecraft:happy_ghast,tag=yrh.map.platform_replaced,scores={yrh_map_floor_wait=1..}] yrh_map_floor_wait 1
execute in minecraft:overworld as @e[type=minecraft:happy_ghast,tag=yrh.map.platform_replaced,scores={yrh_map_floor_wait=..0}] at @s run function yrh.map:function/worldmap/platform/retire
