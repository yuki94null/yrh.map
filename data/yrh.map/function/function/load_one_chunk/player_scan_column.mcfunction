data modify storage yrh.map:_ terrain.scan_pos set value {x:0,z:0}
data modify storage yrh.map:_ terrain.scan_pos.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"terrain.job.x","fallback":0},{"type":"minecraft:storage","storage":"yrh.map:_","path":"terrain.job.column","fallback":0}]}
data modify storage yrh.map:_ terrain.scan_pos.z set from storage yrh.map:_ terrain.job.z
execute if data storage yrh.map:_ terrain.job{half:0} run data modify storage yrh.map:_ terrain.half_offsets set value {z0:0,z1:1,z2:2,z3:3,z4:4,z5:5,z6:6,z7:7}
execute if data storage yrh.map:_ terrain.job{half:1} run data modify storage yrh.map:_ terrain.half_offsets set value {z0:8,z1:9,z2:10,z3:11,z4:12,z5:13,z6:14,z7:15}
function yrh.map:function/load_one_chunk/position_scan_half with storage yrh.map:_ terrain.scan_pos
execute if data storage yrh.map:_ terrain.job{half:0} run return run data modify storage yrh.map:_ terrain.job.half set value 1
data modify storage yrh.map:_ terrain.job.half set value 0
data modify storage yrh.map:_ terrain.job.column set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"terrain.job.column","fallback":0},1]}
execute if data storage yrh.map:_ terrain.job{column:16} run data modify storage yrh.map:_ terrain.job.column set value 0
execute if data storage yrh.map:_ terrain.job{column:0} run data modify storage yrh.map:_ terrain.job.phase set value "bake"
