execute unless loaded ~-11 ~ ~-11 run return 0
execute unless loaded ~-11 ~ ~11 run return 0
execute unless loaded ~11 ~ ~-11 run return 0
execute unless loaded ~11 ~ ~11 run return 0
execute store result storage yrh.map:_ worldmap.removal.map_id int 1 run scoreboard players get @s yrh_map_id
function yrh.map:function/worldmap/cancel_owned_render with storage yrh.map:_ worldmap.removal
function yrh.map:function/worldmap/release_map_id with storage yrh.map:_ worldmap.removal
