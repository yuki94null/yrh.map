scoreboard players set #free_map_id yrh_map_id 1
function yrh.map:function/worldmap/find_free_map_id
scoreboard players operation @s yrh_map_id = #free_map_id yrh_map_id
execute store result storage yrh.map:_ worldmap.allocation.map_id int 1 run scoreboard players get @s yrh_map_id
function yrh.map:function/worldmap/reserve_map_id with storage yrh.map:_ worldmap.allocation
