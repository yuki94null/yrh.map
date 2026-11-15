execute unless score @s yrh_map_id matches 1.. run return 0
function yrh.map:function/worldmap/get_tile_chunk_scores
execute if data storage yrh.map:_ worldmap{display_scaled:1b} run return run function yrh.map:function/worldmap/scaled/cache/show_tile_cache
function yrh.map:function/worldmap/show_target_cache
