data modify storage yrh.map:_ worldmap.scale_sample.nx set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.scale_sample.lx","fallback":0},1]}
data modify storage yrh.map:_ worldmap.scale_sample.nz set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.scale_sample.lz","fallback":0},1]}
function yrh.map:function/worldmap/scaled/render/average/read_group2 with storage yrh.map:_ worldmap.scale_sample
