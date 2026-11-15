# Wait until all of the board and its parts are loaded before moving the assembly.
execute unless loaded ~-8 ~ ~-8 run return 0
execute unless loaded ~-8 ~ ~8 run return 0
execute unless loaded ~8 ~ ~-8 run return 0
execute unless loaded ~8 ~ ~8 run return 0
execute store result storage yrh.map:_ worldmap.platform_migration.map_id int 1 run scoreboard players get @s yrh_map_id
function yrh.map:function/worldmap/platform/lower_assembly with storage yrh.map:_ worldmap.platform_migration
tag @s add yrh.map.floor_height_v2
execute if data entity @s data.yrhmap.Owner run function yrh.map:function/worldmap/platform/update_owner_position
