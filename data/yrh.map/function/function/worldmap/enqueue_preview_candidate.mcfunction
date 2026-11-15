$execute if data storage yrh.map:worldmap_text chunks.c_$(x)_$(z).full.scale_1 run return 0
$execute if data storage yrh.map:worldmap_text chunks.c_$(x)_$(z).scale_1 run return 0
$execute if data storage yrh.map:worldmap_text chunks.c_$(x)_$(z).flat.scale_1 run return 0
$execute unless data storage yrh.map:render "minecraft:over_world".scale_1.chunks."$(x),$(z)"{complete:1b} unless data storage yrh.map:_ terrain.job{x:$(x),z:$(z)} run return 0
data modify storage yrh.map:_ worldmap.load_queue append from storage yrh.map:_ worldmap.queue_candidate
