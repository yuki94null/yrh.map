data modify storage yrh.map:_ mcr.chunkX set from storage yrh.map:_ worldmap.active_job.x
data modify storage yrh.map:_ mcr.chunkZ set from storage yrh.map:_ worldmap.active_job.z
execute unless data storage yrh.map:render "minecraft:over_world".scale_1 run data modify storage yrh.map:render "minecraft:over_world".scale_1 set value {}
function yrh.map:function/worldmap/clear_color_chunk_complete with storage yrh.map:_ worldmap.active_job
$execute positioned $(x) 0 $(z) run function yrh.map:function/load_one_chunk/remove_chunk_data
