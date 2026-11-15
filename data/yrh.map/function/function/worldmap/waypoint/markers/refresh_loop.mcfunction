execute if score #waypoint_draw_slot yrh_map_tmp matches 13.. run return 0
execute store result storage yrh.map:_ worldmap.waypoint_draw.slot int 1 run scoreboard players get #waypoint_draw_slot yrh_map_tmp
execute store result storage yrh.map:_ worldmap.waypoint_draw.index int 1 run scoreboard players get #waypoint_draw_index yrh_map_tmp
function yrh.map:function/worldmap/waypoint/markers/refresh_slot with storage yrh.map:_ worldmap.waypoint_draw
scoreboard players add #waypoint_draw_slot yrh_map_tmp 1
scoreboard players add #waypoint_draw_index yrh_map_tmp 1
function yrh.map:function/worldmap/waypoint/markers/refresh_loop
