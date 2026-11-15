scoreboard players set #waypoint_draw_scale yrh_map_tmp 1
execute if entity @s[tag=yrh.map.scale_2] run scoreboard players set #waypoint_draw_scale yrh_map_tmp 2
execute if entity @s[tag=yrh.map.scale_4] run scoreboard players set #waypoint_draw_scale yrh_map_tmp 4
execute if entity @s[tag=yrh.map.scale_8] run scoreboard players set #waypoint_draw_scale yrh_map_tmp 8
execute if entity @s[tag=yrh.map.scale_16] run scoreboard players set #waypoint_draw_scale yrh_map_tmp 16
function yrh.map:function/worldmap/waypoint/board_size
scoreboard players operation #waypoint_draw_max yrh_map_tmp = #waypoint_board_size yrh_map_tmp
# Use half-block units for exact pin centers; half the board width is size * tile width.
scoreboard players set #waypoint_draw_tile_width yrh_map_tmp 16
scoreboard players operation #waypoint_draw_tile_width yrh_map_tmp *= #waypoint_draw_scale yrh_map_tmp
scoreboard players operation #waypoint_draw_max yrh_map_tmp *= #waypoint_draw_tile_width yrh_map_tmp
scoreboard players set #waypoint_draw_two yrh_map_tmp 2
scoreboard players operation #waypoint_draw_tile_width yrh_map_tmp *= #waypoint_draw_two yrh_map_tmp
scoreboard players set #waypoint_draw_min yrh_map_tmp 0
scoreboard players operation #waypoint_draw_min yrh_map_tmp -= #waypoint_draw_max yrh_map_tmp
execute store result storage yrh.map:_ worldmap.waypoint_draw.tile_width int 1 run scoreboard players get #waypoint_draw_tile_width yrh_map_tmp
