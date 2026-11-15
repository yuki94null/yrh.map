$execute unless data storage yrh.map:surface chunks.c_$(cx)_$(cz).cells.x$(lx).z$(lz).height run return run data modify storage yrh.map:elevation_debug values append value -2147483648
$execute store result score #elev_height yrh_map_tmp run data get storage yrh.map:surface chunks.c_$(cx)_$(cz).cells.x$(lx).z$(lz).height
scoreboard players operation #elev_min yrh_map_tmp < #elev_height yrh_map_tmp
scoreboard players operation #elev_max yrh_map_tmp > #elev_height yrh_map_tmp
execute store result storage yrh.map:elevation_debug height int 1 run scoreboard players get #elev_height yrh_map_tmp
data modify storage yrh.map:elevation_debug values append from storage yrh.map:elevation_debug height
