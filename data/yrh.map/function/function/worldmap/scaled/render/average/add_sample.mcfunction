$execute unless data storage yrh.map:surface chunks.c_$(cx)_$(cz).cells.x$(lx).z$(lz).r run return 0
scoreboard players add #scale_count yrh_map_tmp 1
$execute store result score #scale_channel yrh_map_tmp run data get storage yrh.map:surface chunks.c_$(cx)_$(cz).cells.x$(lx).z$(lz).r 1
scoreboard players operation #scale_r yrh_map_tmp += #scale_channel yrh_map_tmp
$execute store result score #scale_channel yrh_map_tmp run data get storage yrh.map:surface chunks.c_$(cx)_$(cz).cells.x$(lx).z$(lz).g 1
scoreboard players operation #scale_g yrh_map_tmp += #scale_channel yrh_map_tmp
$execute store result score #scale_channel yrh_map_tmp run data get storage yrh.map:surface chunks.c_$(cx)_$(cz).cells.x$(lx).z$(lz).b 1
scoreboard players operation #scale_b yrh_map_tmp += #scale_channel yrh_map_tmp
