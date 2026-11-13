# brightness_factor = 1 + clamp(brightness, 0, 15) / 60
data modify storage yrh.map:_ sample.brightness_factor set compute default float {type:"minecraft:add",inputs:[1.0,{type:"minecraft:div",left:{type:"minecraft:from_int",input:{type:"minecraft:min",inputs:[15,{type:"minecraft:max",inputs:[0,{type:"minecraft:storage",storage:"yrh.map:_",path:"sample.brightness",fallback:0}]}]}},right:60.0}]}

function yrh.map:function/compute_brightness/r
function yrh.map:function/compute_brightness/g
function yrh.map:function/compute_brightness/b
