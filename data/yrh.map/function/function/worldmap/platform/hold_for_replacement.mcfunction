# The old surface remains solid while clients receive the replacement entities.
tag @s add yrh.map.platform_replaced
scoreboard players set @s yrh_map_floor_wait 4

schedule function yrh.map:function/worldmap/platform/tick_replacements 1t replace
