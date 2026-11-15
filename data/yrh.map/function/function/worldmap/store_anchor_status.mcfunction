data modify storage yrh.map:_ worldmap.debug.current set value {ref_x:0,ref_z:0,pos:[0d,0d,0d]}
execute store result storage yrh.map:_ worldmap.debug.current.ref_x int 1 run scoreboard players get @s yrh_map_ax
execute store result storage yrh.map:_ worldmap.debug.current.ref_z int 1 run scoreboard players get @s yrh_map_az
data modify storage yrh.map:_ worldmap.debug.current.pos set from entity @s Pos
data modify storage yrh.map:_ worldmap.debug.anchors append from storage yrh.map:_ worldmap.debug.current
