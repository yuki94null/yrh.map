$execute if data storage yrh.map:worldmap_text chunks.c_$(x)_$(z){layout:3} run data modify entity @s line_width set value 512
$execute if data storage yrh.map:worldmap_text chunks.c_$(x)_$(z){layout:2} run data modify entity @s line_width set value 512
$execute unless data storage yrh.map:worldmap_text chunks.c_$(x)_$(z){layout:2} unless data storage yrh.map:worldmap_text chunks.c_$(x)_$(z){layout:3} run data modify entity @s line_width set value 152
$execute if data storage yrh.map:worldmap_text chunks.c_$(x)_$(z).scale_1 run data modify entity @s text set from storage yrh.map:worldmap_text chunks.c_$(x)_$(z).scale_1
$execute if data storage yrh.map:worldmap_text chunks.c_$(x)_$(z).scale_1 run scoreboard players add #text_cache_hits yrh_map_tmp 1
$execute unless data storage yrh.map:worldmap_text chunks.c_$(x)_$(z).scale_1 run function yrh.map:function/worldmap/blank_pan_tile
