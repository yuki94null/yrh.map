execute store result storage yrh.map:_ terrain.last_cell_count int 1 run scoreboard players get #terrain_cells yrh_map_tmp
execute unless score #terrain_cells yrh_map_tmp matches 256 run tellraw @a[tag=yrh.map.scan_trace] [{text:"[Map Scan] incomplete, cells="},{score:{name:"#terrain_cells",objective:"yrh_map_tmp"}}]
execute unless score #terrain_cells yrh_map_tmp matches 256 run return run data remove storage yrh.map:_ terrain.job
function yrh.map:function/worldmap/mark_color_chunk_complete with storage yrh.map:_ terrain.job
function yrh.map:function/load_one_chunk/record_scan_finish with storage yrh.map:_ terrain.job
execute if entity @a[tag=yrh.map.scan_trace] run function yrh.map:function/load_one_chunk/trace_scan_phase
data remove storage yrh.map:_ terrain.job
