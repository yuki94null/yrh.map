execute store result score #waypoint_ref_x yrh_map_tmp run data get storage yrh.map:_ worldmap.waypoint_reference.x
execute store result score #waypoint_ref_z yrh_map_tmp run data get storage yrh.map:_ worldmap.waypoint_reference.z
scoreboard players operation #waypoint_ref_remainder yrh_map_tmp = #waypoint_ref_x yrh_map_tmp
scoreboard players operation #waypoint_ref_remainder yrh_map_tmp %= #sixteen yrh_map_tmp
execute if score #waypoint_ref_remainder yrh_map_tmp matches ..-1 run scoreboard players add #waypoint_ref_remainder yrh_map_tmp 16
scoreboard players operation #waypoint_ref_x yrh_map_tmp -= #waypoint_ref_remainder yrh_map_tmp
scoreboard players operation #waypoint_ref_remainder yrh_map_tmp = #waypoint_ref_z yrh_map_tmp
scoreboard players operation #waypoint_ref_remainder yrh_map_tmp %= #sixteen yrh_map_tmp
execute if score #waypoint_ref_remainder yrh_map_tmp matches ..-1 run scoreboard players add #waypoint_ref_remainder yrh_map_tmp 16
scoreboard players operation #waypoint_ref_z yrh_map_tmp -= #waypoint_ref_remainder yrh_map_tmp
