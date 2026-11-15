$execute store result score #elev_shade yrh_map_tmp run data get storage yrh.map:elevation_debug values[$(index)]
execute if score #elev_shade yrh_map_tmp matches -2147483648 run return run data modify storage yrh.map:elevation_debug args.shade set value 0
execute if score #elev_span yrh_map_tmp matches 0 run return run data modify storage yrh.map:elevation_debug args.shade set value 8
scoreboard players operation #elev_shade yrh_map_tmp -= #elev_min yrh_map_tmp
scoreboard players operation #elev_shade yrh_map_tmp *= #elev_shades yrh_map_tmp
scoreboard players operation #elev_shade yrh_map_tmp /= #elev_span yrh_map_tmp
scoreboard players add #elev_shade yrh_map_tmp 1
execute store result storage yrh.map:elevation_debug args.shade int 1 run scoreboard players get #elev_shade yrh_map_tmp
