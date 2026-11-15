execute if dimension minecraft:overworld positioned ~-8 ~ ~-8 positioned ~72057594067927936 ~ ~72057594067927936 positioned ~-72057594067927936 ~ ~-72057594067927936 summon minecraft:marker run function yrh.map:function/worldmap/capture_chunk_origin
data remove storage yrh.map:_ worldmap.placement_owner
execute if entity @s[type=minecraft:player] run data modify storage yrh.map:_ worldmap.placement_owner set from entity @s UUID
# The board center is 0.5 blocks north of the anchor.
execute if dimension minecraft:overworld align xz positioned ~0.5 ~-0.98 ~1 summon minecraft:interaction run function yrh.map:function/worldmap/init_added_anchor
data remove storage yrh.map:_ worldmap.placement_owner
