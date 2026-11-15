function yrh.map:function/worldmap/begin_pan
execute if entity @s[tag=yrh.map.scale_2] run scoreboard players add @s yrh_map_az 32
execute if entity @s[tag=yrh.map.scale_4] run scoreboard players add @s yrh_map_az 64
execute if entity @s[tag=yrh.map.scale_8] run scoreboard players add @s yrh_map_az 128
execute if entity @s[tag=yrh.map.scale_16] run scoreboard players add @s yrh_map_az 256
function yrh.map:function/worldmap/read_pan_reference
function yrh.map:function/worldmap/scaled/cache/configure_tile_cache
data modify storage yrh.map:_ worldmap.scaled_pan set value 1b
execute store result storage yrh.map:_ worldmap.pan_owner.map_id int 1 run scoreboard players get @s yrh_map_id
function yrh.map:function/worldmap/pan_parts_south with storage yrh.map:_ worldmap.pan_owner
data remove storage yrh.map:_ worldmap.scaled_pan
function yrh.map:function/worldmap/commit_reference
