$execute if entity @e[type=minecraft:interaction,tag=yrh.map.controller.layout_v20,scores={yrh_map_id=$(map_id)},limit=1] run return run function yrh.map:function/worldmap/controller/move_controller with storage yrh.map:_ worldmap.controller_move
return run function yrh.map:function/worldmap/controller/spawn_controller with storage yrh.map:_ worldmap.controller_move
