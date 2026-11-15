execute store result score #surface_x yrh_map_tmp run data get storage yrh.map:_ surface_access.pos.x
scoreboard players operation #surface_local_x yrh_map_tmp = #surface_x yrh_map_tmp
scoreboard players operation #surface_local_x yrh_map_tmp %= #sixteen yrh_map_tmp
execute if score #surface_local_x yrh_map_tmp matches ..-1 run scoreboard players add #surface_local_x yrh_map_tmp 16
scoreboard players operation #surface_x yrh_map_tmp -= #surface_local_x yrh_map_tmp
execute store result storage yrh.map:_ surface_access.pos.cx int 1 run scoreboard players get #surface_x yrh_map_tmp
execute store result storage yrh.map:_ surface_access.pos.lx int 1 run scoreboard players get #surface_local_x yrh_map_tmp
execute store result score #surface_z yrh_map_tmp run data get storage yrh.map:_ surface_access.pos.z
scoreboard players operation #surface_local_z yrh_map_tmp = #surface_z yrh_map_tmp
scoreboard players operation #surface_local_z yrh_map_tmp %= #sixteen yrh_map_tmp
execute if score #surface_local_z yrh_map_tmp matches ..-1 run scoreboard players add #surface_local_z yrh_map_tmp 16
scoreboard players operation #surface_z yrh_map_tmp -= #surface_local_z yrh_map_tmp
execute store result storage yrh.map:_ surface_access.pos.cz int 1 run scoreboard players get #surface_z yrh_map_tmp
execute store result storage yrh.map:_ surface_access.pos.lz int 1 run scoreboard players get #surface_local_z yrh_map_tmp
