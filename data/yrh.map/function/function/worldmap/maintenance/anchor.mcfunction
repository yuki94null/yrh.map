# Execute as and at a loaded anchor. Current maps only pay tag checks.
execute if data entity @s data.yrhmap.Owner unless entity @s[tag=yrh.map.rim_buttons_v31] run function yrh.map:function/worldmap/migrate_rim_buttons
execute if entity @s[tag=!yrh.map.backing_v9] if entity @a[distance=..16,limit=1] run function yrh.map:function/worldmap/update_map_backing
execute if entity @s[tag=yrh.map.platform_v1,tag=!yrh.map.floor_height_v2] if entity @a[distance=..16,limit=1] run function yrh.map:function/worldmap/platform/update_height
execute if entity @s[tag=yrh.map.platform_v1,tag=!yrh.map.platform_v3] run function yrh.map:function/worldmap/platform/update_footprint
execute if entity @s[tag=!yrh.map.fixed_indicator_v1] if data entity @s data.yrhmap{Pinned:1b} run function yrh.map:function/worldmap/refresh_fixed_indicator
execute unless data entity @s data.yrhmap{Pinned:1b} if data entity @s data.yrhmap.Owner run function yrh.map:function/worldmap/check_owner_distance with entity @s data.yrhmap
