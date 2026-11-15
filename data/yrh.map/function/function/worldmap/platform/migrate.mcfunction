
execute store result storage yrh.map:_ worldmap.platform_migration.map_id int 1 run scoreboard players get @s yrh_map_id
function yrh.map:function/worldmap/platform/lower_parts with storage yrh.map:_ worldmap.platform_migration
tp @s ~ ~-0.09 ~
execute at @s run function yrh.map:function/worldmap/platform/create
function yrh.map:function/worldmap/bind_map_parts
execute if data entity @s data.yrhmap.Owner run function yrh.map:function/worldmap/platform/update_owner_position
