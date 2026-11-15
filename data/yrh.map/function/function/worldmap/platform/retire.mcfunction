tag @s remove yrh.map.platform_replaced
tag @s remove yrh.map.platform
tag @s add yrh.map.platform_retired
tp @s ~ -5000 ~
execute store result score @s yrh_map_floor_wait run time query gametime
schedule function yrh.map:function/worldmap/platform/kill_retired 1t append
