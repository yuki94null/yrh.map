
tag @s add yrh.map.platform_v1
tag @s add yrh.map.platform_v3
function yrh.map:function/worldmap/platform/create_layout
team join yrh_map_floor @e[type=minecraft:happy_ghast,tag=yrh.map.platform_new]
execute as @e[type=minecraft:happy_ghast,tag=yrh.map.platform_new] run data modify entity @s data.yrhmap.PlatformPos set from entity @s Pos
tag @e[type=minecraft:happy_ghast,tag=yrh.map.platform_new] remove yrh.map.platform_new
