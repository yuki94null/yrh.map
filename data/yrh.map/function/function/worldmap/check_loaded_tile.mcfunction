function yrh.map:function/worldmap/get_tile_chunk_scores
execute if entity @a[tag=yrh.map.queue_trace] run function yrh.map:function/worldmap/record_tile_check
execute if score #target_x yrh_map_tmp = #loaded_x yrh_map_tmp if score #target_z yrh_map_tmp = #loaded_z yrh_map_tmp run function yrh.map:function/worldmap/render_tile
