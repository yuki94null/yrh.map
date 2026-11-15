data modify storage yrh.map:_ worldmap.controller_move.owner set from entity @s data.yrhmap.Owner
data modify storage yrh.map:_ worldmap.controller_move.y set from entity @s Pos[1]
execute if entity @s[tag=yrh.map.size_5] positioned ~-2.5 ~0.5 ~-3 run return run function yrh.map:function/worldmap/controller/controller_on_map {span:4}
execute if entity @s[tag=yrh.map.size_7] positioned ~-3.5 ~0.5 ~-4 run return run function yrh.map:function/worldmap/controller/controller_on_map {span:6}
execute if entity @s[tag=yrh.map.size_9] positioned ~-4.5 ~0.5 ~-5 run return run function yrh.map:function/worldmap/controller/controller_on_map {span:8}
execute if entity @s[tag=yrh.map.size_11] positioned ~-5.5 ~0.5 ~-6 run return run function yrh.map:function/worldmap/controller/controller_on_map {span:10}
execute if entity @s[tag=yrh.map.size_13] positioned ~-6.5 ~0.5 ~-7 run return run function yrh.map:function/worldmap/controller/controller_on_map {span:12}
return 0
