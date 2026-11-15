data modify storage yrh.map:_ hex_conversion.input set from storage yrh.map:_ surface_access.sample
function yrh.map:function/decimal_to_hex/convert
data modify storage yrh.map:_ render.bake_args set from storage yrh.map:_ hex_conversion.result
data modify storage yrh.map:_ hex_conversion.input.r set compute default float {type:"minecraft:min",inputs:[255.0,{type:"minecraft:mul",inputs:[{type:"minecraft:storage",storage:"yrh.map:_",path:"hex_conversion.input.r",fallback:0.0},1.2]}]}
data modify storage yrh.map:_ hex_conversion.input.g set compute default float {type:"minecraft:min",inputs:[255.0,{type:"minecraft:mul",inputs:[{type:"minecraft:storage",storage:"yrh.map:_",path:"hex_conversion.input.g",fallback:0.0},1.2]}]}
data modify storage yrh.map:_ hex_conversion.input.b set compute default float {type:"minecraft:min",inputs:[255.0,{type:"minecraft:mul",inputs:[{type:"minecraft:storage",storage:"yrh.map:_",path:"hex_conversion.input.b",fallback:0.0},1.2]}]}
function yrh.map:function/decimal_to_hex/convert
data modify storage yrh.map:_ render.bake_args.hr set from storage yrh.map:_ hex_conversion.result.r
data modify storage yrh.map:_ render.bake_args.hg set from storage yrh.map:_ hex_conversion.result.g
data modify storage yrh.map:_ render.bake_args.hb set from storage yrh.map:_ hex_conversion.result.b
$data modify storage yrh.map:_ render.bake_args.x set value $(x)
$data modify storage yrh.map:_ render.bake_args.z set value $(z)
data modify storage yrh.map:_ render.bake_args.height set value 0.0f
data modify storage yrh.map:_ render.bake_args.height set from storage yrh.map:_ hex_conversion.input.height
data modify storage yrh.map:_ render.bake_args.water set value 0
execute if data storage yrh.map:_ hex_conversion.input{water:1b} run data modify storage yrh.map:_ render.bake_args.water set value 1
function yrh.map:function/render/store_color with storage yrh.map:_ render.bake_args
