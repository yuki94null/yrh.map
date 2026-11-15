data modify storage yrh.map:_ terrain.candidate set value {x:0,z:0,column:0}
execute store result storage yrh.map:_ terrain.candidate.x int 1 run data get entity @s Pos[0]
execute store result storage yrh.map:_ terrain.candidate.z int 1 run data get entity @s Pos[2]
kill @s
execute unless data storage yrh.map:_ terrain.job run function yrh.map:function/load_one_chunk/player_scan_start with storage yrh.map:_ terrain.candidate
