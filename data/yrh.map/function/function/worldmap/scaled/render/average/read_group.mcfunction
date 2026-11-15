$execute unless data storage yrh.map:render "minecraft:over_world".scale_1.chunks."$(cx),$(cz)"{complete:1b} run return 0
scoreboard players set #scale_group_loaded yrh_map_tmp 1
execute if data storage yrh.map:_ worldmap.scale_sample{scale:2} run return run function yrh.map:function/worldmap/scaled/render/average/group2
$function yrh.map:function/worldmap/scaled/render/average/group/x$(lx)_z$(lz) with storage yrh.map:_ worldmap.scale_sample
