# Execute as the owned map anchor.
execute store result storage yrh.map:_ worldmap.controller_move.map_id int 1 run scoreboard players get @s yrh_map_id
execute store result score #controller_followed yrh_map_tmp run function yrh.map:function/worldmap/controller/check_controller_bounds
execute if score #controller_followed yrh_map_tmp matches 1 unless entity @s[tag=yrh.map.rim_controls_hidden] run return run function yrh.map:function/worldmap/hide_rim_controls with storage yrh.map:_ worldmap.controller_move
execute unless score #controller_followed yrh_map_tmp matches 1 run function yrh.map:function/worldmap/controller/remove_controller with storage yrh.map:_ worldmap.controller_move
execute unless score #controller_followed yrh_map_tmp matches 1 if entity @s[tag=yrh.map.rim_controls_hidden] run function yrh.map:function/worldmap/restore_rim_controls
