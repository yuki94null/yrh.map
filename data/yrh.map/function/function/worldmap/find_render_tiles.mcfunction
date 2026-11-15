$execute as @e[type=minecraft:text_display,tag=yrh.map.worldmap_chunk_display,scores={yrh_map_id=$(map_id)}] run function yrh.map:function/worldmap/check_loaded_tile
