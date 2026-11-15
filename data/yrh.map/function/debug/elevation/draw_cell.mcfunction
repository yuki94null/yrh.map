execute store result storage yrh.map:elevation_debug args.index int 1 run scoreboard players get #elev_index yrh_map_tmp
function yrh.map:debug/elevation/shade_height with storage yrh.map:elevation_debug args
function yrh.map:debug/elevation/append_pixel with storage yrh.map:elevation_debug args
scoreboard players add #elev_index yrh_map_tmp 1
scoreboard players add #elev_column yrh_map_tmp 1
execute if score #elev_column yrh_map_tmp matches ..15 run function yrh.map:debug/elevation/draw_cell
