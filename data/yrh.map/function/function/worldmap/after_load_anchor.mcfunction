scoreboard players operation #reference_x yrh_map_tmp = @s yrh_map_ax
scoreboard players operation #reference_z yrh_map_tmp = @s yrh_map_az
execute on passengers if entity @s[type=minecraft:text_display,tag=yrh.map.worldmap_chunk_display] run function yrh.map:function/worldmap/check_loaded_tile
