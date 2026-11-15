execute unless loaded ~-8 ~ ~-8 run return 0
execute unless loaded ~-8 ~ ~8 run return 0
execute unless loaded ~8 ~ ~-8 run return 0
execute unless loaded ~8 ~ ~8 run return 0
execute store result storage yrh.map:_ worldmap.platform_migration.map_id int 1 run scoreboard players get @s yrh_map_id
function yrh.map:function/worldmap/platform/mark_replaced with storage yrh.map:_ worldmap.platform_migration
function yrh.map:function/worldmap/platform/create
function yrh.map:function/worldmap/bind_map_parts
