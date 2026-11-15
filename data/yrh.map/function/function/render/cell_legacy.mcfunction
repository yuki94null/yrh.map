$data modify storage yrh.map:_ render.args.color set from storage yrh.map:render "minecraft:over_world".scale_1.$(x).$(z)
data modify storage yrh.map:_ render.args.i set from storage yrh.map:_ render.position.i
data modify storage yrh.map:_ render.args.glyph set value "■"
function yrh.map:function/render/append_cell with storage yrh.map:_ render.args
