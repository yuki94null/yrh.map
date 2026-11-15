function yrh.map:function/render/bake_cell with storage yrh.map:_ render.bake_pos
$execute if data storage yrh.map:_ surface_access.sample.height if data storage yrh.map:render "minecraft:over_world".scale_1.$(x).$(z).height run scoreboard players add #terrain_cells yrh_map_tmp 1
