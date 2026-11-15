execute store result storage yrh.map:elevation_debug args.lx int 1 run scoreboard players get #elev_column yrh_map_tmp
function yrh.map:debug/elevation/read_height with storage yrh.map:elevation_debug args
scoreboard players add #elev_column yrh_map_tmp 1
execute if score #elev_column yrh_map_tmp matches ..15 run function yrh.map:debug/elevation/scan_cell
