data modify storage yrh.map:_ worldmap.cache_probe set value {x:0,z:0,quality:"full"}
execute if data storage yrh.map:_ worldmap.display_quality run data modify storage yrh.map:_ worldmap.cache_probe.quality set from storage yrh.map:_ worldmap.display_quality
execute store result storage yrh.map:_ worldmap.cache_probe.x int 1 run scoreboard players get #target_x yrh_map_tmp
execute store result storage yrh.map:_ worldmap.cache_probe.z int 1 run scoreboard players get #target_z yrh_map_tmp
function yrh.map:function/worldmap/show_cached_tile_from_storage with storage yrh.map:_ worldmap.cache_probe
