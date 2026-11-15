# Water: factor = clamp(1 - water_depth / 50, 0.4, 1.0).
# A depth of 0 stays at the biome water color; depth 30 reaches 0.4.
data modify storage yrh.map:_ sample.height_factor set compute default float {type:"minecraft:min",inputs:[1.0,{type:"minecraft:max",inputs:[0.4,{type:"minecraft:sub",left:1.0,right:{type:"minecraft:div",left:{type:"minecraft:storage",storage:"yrh.map:_",path:"sample.water_depth",fallback:0},right:50.0}}]}]}
