$execute if entity @e[type=minecraft:text_display,tag=yrh.map.worldmap_chunk_display,scores={yrh_map_id=$(map_id),yrh_map_tx=$(x),yrh_map_tz=$(z)},limit=1] run return 1
return 0
