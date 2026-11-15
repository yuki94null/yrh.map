execute store result score #waypoint_tp_y yrh_map_tmp run data get storage yrh.map:_ surface_access.sample.height
execute if data storage yrh.map:_ surface_access.sample.water_depth store result score #waypoint_tp_water yrh_map_tmp run data get storage yrh.map:_ surface_access.sample.water_depth
execute if data storage yrh.map:_ surface_access.sample.water_depth run scoreboard players operation #waypoint_tp_y yrh_map_tmp += #waypoint_tp_water yrh_map_tmp
# Leave one extra block of clearance above the cached surface.
scoreboard players add #waypoint_tp_y yrh_map_tmp 2
execute store result storage yrh.map:_ surface_access.pos.y int 1 run scoreboard players get #waypoint_tp_y yrh_map_tmp
function yrh.map:function/worldmap/waypoint/markers/teleport_at_height with storage yrh.map:_ surface_access.pos
