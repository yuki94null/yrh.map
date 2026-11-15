scoreboard players set #terrain_interval yrh_map_tmp 1200
execute if score #terrain_search yrh_map_tmp matches 0 run scoreboard players set #terrain_interval yrh_map_tmp 200
execute if score #terrain_search yrh_map_tmp matches 0 unless data storage yrh.map:_ terrain.job positioned ~0 ~ ~0 summon minecraft:marker run function yrh.map:function/load_one_chunk/player_scan_origin
execute if score #terrain_search yrh_map_tmp matches 1 unless data storage yrh.map:_ terrain.job positioned ~0 ~ ~-16 summon minecraft:marker run function yrh.map:function/load_one_chunk/player_scan_origin
execute if score #terrain_search yrh_map_tmp matches 2 unless data storage yrh.map:_ terrain.job positioned ~16 ~ ~0 summon minecraft:marker run function yrh.map:function/load_one_chunk/player_scan_origin
execute if score #terrain_search yrh_map_tmp matches 3 unless data storage yrh.map:_ terrain.job positioned ~0 ~ ~16 summon minecraft:marker run function yrh.map:function/load_one_chunk/player_scan_origin
execute if score #terrain_search yrh_map_tmp matches 4 unless data storage yrh.map:_ terrain.job positioned ~-16 ~ ~0 summon minecraft:marker run function yrh.map:function/load_one_chunk/player_scan_origin
execute if score #terrain_search yrh_map_tmp matches 5 unless data storage yrh.map:_ terrain.job positioned ~16 ~ ~-16 summon minecraft:marker run function yrh.map:function/load_one_chunk/player_scan_origin
execute if score #terrain_search yrh_map_tmp matches 6 unless data storage yrh.map:_ terrain.job positioned ~16 ~ ~16 summon minecraft:marker run function yrh.map:function/load_one_chunk/player_scan_origin
execute if score #terrain_search yrh_map_tmp matches 7 unless data storage yrh.map:_ terrain.job positioned ~-16 ~ ~16 summon minecraft:marker run function yrh.map:function/load_one_chunk/player_scan_origin
execute if score #terrain_search yrh_map_tmp matches 8 unless data storage yrh.map:_ terrain.job positioned ~-16 ~ ~-16 summon minecraft:marker run function yrh.map:function/load_one_chunk/player_scan_origin
