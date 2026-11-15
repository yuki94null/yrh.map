execute unless data storage yrh.map:render "minecraft:over_world".scale_1.chunks run data modify storage yrh.map:render "minecraft:over_world".scale_1.chunks set value {}
$execute unless data storage yrh.map:render "minecraft:over_world".scale_1.chunks."$(x),$(z)" run data modify storage yrh.map:render "minecraft:over_world".scale_1.chunks."$(x),$(z)" set value {}
$data modify storage yrh.map:render "minecraft:over_world".scale_1.chunks."$(x),$(z)".complete set value 1b
$execute if score #terrain_revision yrh_map_tmp matches $(start_revision) if data storage yrh.map:render "minecraft:over_world".scale_1.chunks."$(x),$(z)".revision run return 0
scoreboard players add #terrain_revision yrh_map_tmp 1
$execute store result storage yrh.map:render "minecraft:over_world".scale_1.chunks."$(x),$(z)".revision int 1 run scoreboard players get #terrain_revision yrh_map_tmp
