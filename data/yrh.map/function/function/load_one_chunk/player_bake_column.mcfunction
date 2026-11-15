execute if data storage yrh.map:_ terrain.job{column:0,half:0} if entity @a[tag=yrh.map.scan_trace] run function yrh.map:function/load_one_chunk/trace_scan_phase
data modify storage yrh.map:_ render.bake_pos set value {x:0,z:0}
data modify storage yrh.map:_ render.bake_pos.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"terrain.job.x","fallback":0},{"type":"minecraft:storage","storage":"yrh.map:_","path":"terrain.job.column","fallback":0}]}
execute if data storage yrh.map:_ terrain.job{half:0} run function yrh.map:function/load_one_chunk/bake_half_0
execute if data storage yrh.map:_ terrain.job{half:1} run function yrh.map:function/load_one_chunk/bake_half_1
execute if data storage yrh.map:_ terrain.job{half:0} run return run data modify storage yrh.map:_ terrain.job.half set value 1
data modify storage yrh.map:_ terrain.job.half set value 0
data modify storage yrh.map:_ terrain.job.column set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"terrain.job.column","fallback":0},1]}
execute if data storage yrh.map:_ terrain.job{column:16} run data modify storage yrh.map:_ terrain.job.column set value 0
execute if data storage yrh.map:_ terrain.job{column:0} run data modify storage yrh.map:_ terrain.job.phase set value "finish"
