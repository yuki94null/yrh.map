data modify storage yrh.map:_ worldmap.debug.tile_check set value {tx:0,tz:0,target_x:0,target_z:0,loaded_x:0,loaded_z:0}
execute store result storage yrh.map:_ worldmap.debug.tile_check.tx int 1 run scoreboard players get @s yrh_map_tx
execute store result storage yrh.map:_ worldmap.debug.tile_check.tz int 1 run scoreboard players get @s yrh_map_tz
execute store result storage yrh.map:_ worldmap.debug.tile_check.target_x int 1 run scoreboard players get #target_x yrh_map_tmp
execute store result storage yrh.map:_ worldmap.debug.tile_check.target_z int 1 run scoreboard players get #target_z yrh_map_tmp
execute store result storage yrh.map:_ worldmap.debug.tile_check.loaded_x int 1 run scoreboard players get #loaded_x yrh_map_tmp
execute store result storage yrh.map:_ worldmap.debug.tile_check.loaded_z int 1 run scoreboard players get #loaded_z yrh_map_tmp
data modify storage yrh.map:_ worldmap.debug.tile_checks append from storage yrh.map:_ worldmap.debug.tile_check
