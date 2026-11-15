data modify storage yrh.map:_ terrain.bulk_origin set value {x:0,z:0}
execute store result storage yrh.map:_ terrain.bulk_origin.x int 1 run data get entity @s Pos[0]
execute store result storage yrh.map:_ terrain.bulk_origin.z int 1 run data get entity @s Pos[2]
function yrh.map:function/load_one_chunk/enqueue_9x9_offsets with storage yrh.map:_ terrain.bulk_origin
kill @s
