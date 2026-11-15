data modify storage yrh.map:_ worldmap.scaled_tile_cache set value {scale:2,mode:"average"}
execute if entity @s[tag=yrh.map.scale_4] run data modify storage yrh.map:_ worldmap.scaled_tile_cache.scale set value 4
execute if entity @s[tag=yrh.map.scale_8] run data modify storage yrh.map:_ worldmap.scaled_tile_cache.scale set value 8
execute if entity @s[tag=yrh.map.scale_16] run data modify storage yrh.map:_ worldmap.scaled_tile_cache.scale set value 16
execute if entity @s[tag=yrh.map.scale_representative] run data modify storage yrh.map:_ worldmap.scaled_tile_cache.mode set value "representative"
execute store result storage yrh.map:_ worldmap.scaled_tile_cache.revision int 1 run scoreboard players get #terrain_revision yrh_map_tmp
