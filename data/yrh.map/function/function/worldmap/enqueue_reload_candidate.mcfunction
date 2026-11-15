$execute unless data storage yrh.map:render "minecraft:over_world".scale_1.chunks."$(x),$(z)"{complete:1b} unless data storage yrh.map:_ terrain.job{x:$(x),z:$(z)} run return 0
data modify storage yrh.map:_ worldmap.revision_origin set from storage yrh.map:_ worldmap.queue_candidate
function yrh.map:function/worldmap/get_render_revision
data modify storage yrh.map:_ worldmap.revision merge from storage yrh.map:_ worldmap.queue_candidate
execute store result score #render_current yrh_map_tmp run function yrh.map:function/worldmap/compare_render_revision with storage yrh.map:_ worldmap.revision
execute unless score #render_current yrh_map_tmp matches 1 run data modify storage yrh.map:_ worldmap.load_queue append from storage yrh.map:_ worldmap.queue_candidate
