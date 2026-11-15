execute unless dimension minecraft:overworld run return 0
execute positioned ~-8 ~ ~-8 positioned ~72057594067927936 ~ ~72057594067927936 positioned ~-72057594067927936 ~ ~-72057594067927936 summon minecraft:marker run function yrh.map:function/worldmap/capture_chunk_origin
data remove storage yrh.map:_ worldmap.placement_owner
execute align xz positioned ~0.5 ~-0.98 ~1 summon minecraft:interaction run function yrh.map:function/worldmap/init_added_anchor
