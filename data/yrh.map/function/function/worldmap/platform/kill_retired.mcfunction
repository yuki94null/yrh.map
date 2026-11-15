execute store result score #map_floor_now yrh_map_tmp run time query gametime
execute in minecraft:overworld as @e[type=minecraft:happy_ghast,tag=yrh.map.platform_retired] unless score @s yrh_map_floor_wait = #map_floor_now yrh_map_tmp run kill @s
