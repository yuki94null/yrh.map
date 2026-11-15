function yrh.map:function/worldmap/waypoint/markers/read_pan_width
scoreboard players operation #diagonal_x yrh_map_tmp *= #waypoint_pan_width yrh_map_tmp
scoreboard players operation #diagonal_z yrh_map_tmp *= #waypoint_pan_width yrh_map_tmp
scoreboard players operation #diagonal_x yrh_map_tmp += @s yrh_map_ax
scoreboard players operation #diagonal_z yrh_map_tmp += @s yrh_map_az
execute store result storage yrh.map:_ worldmap.click.x int 1 run scoreboard players get #diagonal_x yrh_map_tmp
execute store result storage yrh.map:_ worldmap.click.z int 1 run scoreboard players get #diagonal_z yrh_map_tmp
function yrh.map:function/worldmap/waypoint/markers/center
