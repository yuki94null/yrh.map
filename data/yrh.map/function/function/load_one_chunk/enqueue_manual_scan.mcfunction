data modify storage yrh.map:_ terrain.manual_request set value {x:0,z:0,column:0}
execute store result storage yrh.map:_ terrain.manual_request.x int 1 run data get entity @s Pos[0]
execute store result storage yrh.map:_ terrain.manual_request.z int 1 run data get entity @s Pos[2]
data modify storage yrh.map:_ terrain.manual_queue append from storage yrh.map:_ terrain.manual_request
kill @s
