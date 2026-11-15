
execute summon marker run function yrh.map:function/load_one_chunk/get_pos_x
execute summon marker run function yrh.map:function/load_one_chunk/get_pos_z
function yrh.map:function/load_one_chunk/remove_surface_chunk with storage yrh.map:_ mcr
execute unless data storage yrh.map:surface "minecraft:over_world" run return 0


# data modify storage yrh.map:_ tmp.x0
data modify storage yrh.map:_ tmp.x0 set compute default integer {type:"add",inputs:[0,{type:"storage",storage:"yrh.map:_","path":"mcr.posX"}]}
data modify storage yrh.map:_ tmp.x1 set compute default integer {type:"add",inputs:[1,{type:"storage",storage:"yrh.map:_","path":"mcr.posX"}]}
data modify storage yrh.map:_ tmp.x2 set compute default integer {type:"add",inputs:[2,{type:"storage",storage:"yrh.map:_","path":"mcr.posX"}]}
data modify storage yrh.map:_ tmp.x3 set compute default integer {type:"add",inputs:[3,{type:"storage",storage:"yrh.map:_","path":"mcr.posX"}]}
data modify storage yrh.map:_ tmp.x4 set compute default integer {type:"add",inputs:[4,{type:"storage",storage:"yrh.map:_","path":"mcr.posX"}]}
data modify storage yrh.map:_ tmp.x5 set compute default integer {type:"add",inputs:[5,{type:"storage",storage:"yrh.map:_","path":"mcr.posX"}]}
data modify storage yrh.map:_ tmp.x6 set compute default integer {type:"add",inputs:[6,{type:"storage",storage:"yrh.map:_","path":"mcr.posX"}]}
data modify storage yrh.map:_ tmp.x7 set compute default integer {type:"add",inputs:[7,{type:"storage",storage:"yrh.map:_","path":"mcr.posX"}]}
data modify storage yrh.map:_ tmp.x8 set compute default integer {type:"add",inputs:[8,{type:"storage",storage:"yrh.map:_","path":"mcr.posX"}]}
data modify storage yrh.map:_ tmp.x9 set compute default integer {type:"add",inputs:[9,{type:"storage",storage:"yrh.map:_","path":"mcr.posX"}]}
data modify storage yrh.map:_ tmp.x10 set compute default integer {type:"add",inputs:[10,{type:"storage",storage:"yrh.map:_","path":"mcr.posX"}]}
data modify storage yrh.map:_ tmp.x11 set compute default integer {type:"add",inputs:[11,{type:"storage",storage:"yrh.map:_","path":"mcr.posX"}]}
data modify storage yrh.map:_ tmp.x12 set compute default integer {type:"add",inputs:[12,{type:"storage",storage:"yrh.map:_","path":"mcr.posX"}]}
data modify storage yrh.map:_ tmp.x13 set compute default integer {type:"add",inputs:[13,{type:"storage",storage:"yrh.map:_","path":"mcr.posX"}]}
data modify storage yrh.map:_ tmp.x14 set compute default integer {type:"add",inputs:[14,{type:"storage",storage:"yrh.map:_","path":"mcr.posX"}]}
data modify storage yrh.map:_ tmp.x15 set compute default integer {type:"add",inputs:[15,{type:"storage",storage:"yrh.map:_","path":"mcr.posX"}]}

data modify storage yrh.map:_ tmp.z0 set compute default integer {type:"add",inputs:[0,{type:"storage",storage:"yrh.map:_","path":"mcr.posZ"}]}
data modify storage yrh.map:_ tmp.z1 set compute default integer {type:"add",inputs:[1,{type:"storage",storage:"yrh.map:_","path":"mcr.posZ"}]}
data modify storage yrh.map:_ tmp.z2 set compute default integer {type:"add",inputs:[2,{type:"storage",storage:"yrh.map:_","path":"mcr.posZ"}]}
data modify storage yrh.map:_ tmp.z3 set compute default integer {type:"add",inputs:[3,{type:"storage",storage:"yrh.map:_","path":"mcr.posZ"}]}
data modify storage yrh.map:_ tmp.z4 set compute default integer {type:"add",inputs:[4,{type:"storage",storage:"yrh.map:_","path":"mcr.posZ"}]}
data modify storage yrh.map:_ tmp.z5 set compute default integer {type:"add",inputs:[5,{type:"storage",storage:"yrh.map:_","path":"mcr.posZ"}]}
data modify storage yrh.map:_ tmp.z6 set compute default integer {type:"add",inputs:[6,{type:"storage",storage:"yrh.map:_","path":"mcr.posZ"}]}
data modify storage yrh.map:_ tmp.z7 set compute default integer {type:"add",inputs:[7,{type:"storage",storage:"yrh.map:_","path":"mcr.posZ"}]}
data modify storage yrh.map:_ tmp.z8 set compute default integer {type:"add",inputs:[8,{type:"storage",storage:"yrh.map:_","path":"mcr.posZ"}]}
data modify storage yrh.map:_ tmp.z9 set compute default integer {type:"add",inputs:[9,{type:"storage",storage:"yrh.map:_","path":"mcr.posZ"}]}
data modify storage yrh.map:_ tmp.z10 set compute default integer {type:"add",inputs:[10,{type:"storage",storage:"yrh.map:_","path":"mcr.posZ"}]}
data modify storage yrh.map:_ tmp.z11 set compute default integer {type:"add",inputs:[11,{type:"storage",storage:"yrh.map:_","path":"mcr.posZ"}]}
data modify storage yrh.map:_ tmp.z12 set compute default integer {type:"add",inputs:[12,{type:"storage",storage:"yrh.map:_","path":"mcr.posZ"}]}
data modify storage yrh.map:_ tmp.z13 set compute default integer {type:"add",inputs:[13,{type:"storage",storage:"yrh.map:_","path":"mcr.posZ"}]}
data modify storage yrh.map:_ tmp.z14 set compute default integer {type:"add",inputs:[14,{type:"storage",storage:"yrh.map:_","path":"mcr.posZ"}]}
data modify storage yrh.map:_ tmp.z15 set compute default integer {type:"add",inputs:[15,{type:"storage",storage:"yrh.map:_","path":"mcr.posZ"}]}

function yrh.map:function/load_one_chunk/mcr_remove_chunk_data with storage yrh.map:_ tmp