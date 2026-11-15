data modify storage yrh.map:_ sample.water_depth set compute default integer {type:"minecraft:max",inputs:[0,{type:"minecraft:sub",left:{type:"minecraft:storage",storage:"yrh.map:_",path:"sample.surface_height",fallback:0},right:{type:"minecraft:storage",storage:"yrh.map:_",path:"sample.height",fallback:0}}]}
data remove storage yrh.map:_ sample.surface_height
