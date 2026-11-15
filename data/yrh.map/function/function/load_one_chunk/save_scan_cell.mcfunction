function yrh.map:function/load_one_chunk/mcr_get_data with storage yrh.map:_ mcr
data modify storage yrh.map:_ mcr.posZ set compute default integer {type:"minecraft:add",inputs:[{type:"minecraft:storage",storage:"yrh.map:_",path:"mcr.posZ"},1]}
