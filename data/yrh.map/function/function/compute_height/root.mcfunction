# factor = clamp(1 + (height - 64) / 512, 0.75, 1.25)
data modify storage yrh.map:_ sample.height_factor set compute default float {type:"minecraft:min",inputs:[1.25,{type:"minecraft:max",inputs:[0.75,{type:"minecraft:add",inputs:[1.0,{type:"minecraft:div",left:{type:"minecraft:sub",left:{type:"minecraft:storage",storage:"yrh.map:_",path:"sample.height",fallback:64.0},right:64.0},right:512.0}]}]}]}

function yrh.map:function/compute_height/r
function yrh.map:function/compute_height/g
function yrh.map:function/compute_height/b
