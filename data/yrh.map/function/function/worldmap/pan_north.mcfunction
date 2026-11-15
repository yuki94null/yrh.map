execute if entity @s[tag=yrh.map.scale_2] run return run function yrh.map:function/worldmap/scaled/navigation/pan_north
execute if entity @s[tag=yrh.map.scale_4] run return run function yrh.map:function/worldmap/scaled/navigation/pan_north
execute if entity @s[tag=yrh.map.scale_8] run return run function yrh.map:function/worldmap/scaled/navigation/pan_north
execute if entity @s[tag=yrh.map.scale_16] run return run function yrh.map:function/worldmap/scaled/navigation/pan_north
function yrh.map:function/worldmap/begin_pan
execute store result storage yrh.map:_ worldmap.pan_owner.map_id int 1 run scoreboard players get @s yrh_map_id
scoreboard players remove @s yrh_map_az 16
function yrh.map:function/worldmap/read_pan_reference
execute if entity @s[tag=yrh.map.stationary_tiles] at @s run function yrh.map:function/worldmap/pan_parts_north with storage yrh.map:_ worldmap.pan_owner
execute unless entity @s[tag=yrh.map.stationary_tiles] on passengers if entity @s[type=minecraft:text_display,tag=yrh.map.worldmap_chunk_display] run function yrh.map:function/worldmap/shift_tile_north
function yrh.map:function/worldmap/commit_reference
