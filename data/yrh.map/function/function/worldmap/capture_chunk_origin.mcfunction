# Save the data chunk origin separately from the physical anchor position.
data modify storage yrh.map:_ worldmap.args set value {x:0,z:0}
execute store result storage yrh.map:_ worldmap.args.x int 1 run data get entity @s Pos[0]
execute store result storage yrh.map:_ worldmap.args.z int 1 run data get entity @s Pos[2]
kill @s
