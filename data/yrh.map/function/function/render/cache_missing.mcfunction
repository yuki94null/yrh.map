execute unless data storage yrh.map:render "minecraft:over_world" run data modify storage yrh.map:render "minecraft:over_world" set value {}
execute unless data storage yrh.map:render "minecraft:over_world".scale_1 run data modify storage yrh.map:render "minecraft:over_world".scale_1 set value {}
data modify storage yrh.map:_ render.bake_pos.x set from storage yrh.map:_ render.position.x
data modify storage yrh.map:_ render.bake_pos.z set from storage yrh.map:_ render.position.z
function yrh.map:function/render/bake_cell with storage yrh.map:_ render.bake_pos
execute if data storage yrh.map:_ surface_access.sample run function yrh.map:function/render/cell_present with storage yrh.map:_ render.position
