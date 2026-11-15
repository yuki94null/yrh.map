$scoreboard players set #terrain_interval yrh_map_tmp $(interval)
$execute positioned ~$(x) ~ ~$(z) if loaded ~ ~ ~ summon minecraft:marker run function yrh.map:function/load_one_chunk/player_scan_origin
