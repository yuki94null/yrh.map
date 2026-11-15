$execute unless data storage yrh.map:render "minecraft:over_world".scale_1.$(x) run data modify storage yrh.map:render "minecraft:over_world".scale_1.$(x) set value {}
$execute store success score #color_changed yrh_map_tmp run data modify storage yrh.map:render "minecraft:over_world".scale_1.$(x).$(z) set value {base:"$(r)$(g)$(b)",highlight:"$(hr)$(hg)$(hb)",height:$(height),water:$(water)b}
execute if score #color_changed yrh_map_tmp matches 1 run scoreboard players add #terrain_revision yrh_map_tmp 1
