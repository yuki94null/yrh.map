execute store result score #bit yrh_map_tmp run data get storage yrh.map:_ render.edge_pos.bit 1
scoreboard players operation #neighbor yrh_map_tmp = #center yrh_map_tmp
$execute if data storage yrh.map:render "minecraft:over_world".scale_1.$(x).$(z).height store result score #neighbor yrh_map_tmp run data get storage yrh.map:render "minecraft:over_world".scale_1.$(x).$(z).height 1
$execute unless data storage yrh.map:render "minecraft:over_world".scale_1.$(x).$(z).height if data storage yrh.map:surface "minecraft:over_world".$(x)[].$(z).height store result score #neighbor yrh_map_tmp run data get storage yrh.map:surface "minecraft:over_world".$(x)[].$(z).height 1
scoreboard players operation #diff yrh_map_tmp = #neighbor yrh_map_tmp
scoreboard players operation #diff yrh_map_tmp -= #center yrh_map_tmp
execute if score #diff yrh_map_tmp matches 1.. run scoreboard players operation #shadow yrh_map_tmp += #bit yrh_map_tmp
execute if score #diff yrh_map_tmp matches ..-1 run scoreboard players operation #highlight yrh_map_tmp += #bit yrh_map_tmp
