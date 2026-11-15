execute store result storage yrh.map:_ worldmap.backing.map_id int 1 run scoreboard players get @s yrh_map_id
function yrh.map:function/worldmap/remove_backing_display with storage yrh.map:_ worldmap.backing
execute at @s run function yrh.map:function/worldmap/create_map_backing
function yrh.map:function/worldmap/bind_map_parts
