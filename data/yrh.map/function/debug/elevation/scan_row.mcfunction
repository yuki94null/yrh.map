execute store result storage yrh.map:elevation_debug args.lz int 1 run scoreboard players get #elev_row yrh_map_tmp
scoreboard players set #elev_column yrh_map_tmp 0
function yrh.map:debug/elevation/scan_cell
scoreboard players add #elev_row yrh_map_tmp 1
execute if score #elev_row yrh_map_tmp matches ..15 run function yrh.map:debug/elevation/scan_row
