scoreboard players set #waypoint_draw_scale yrh_map_tmp 1
execute if entity @s[tag=yrh.map.scale_2] run scoreboard players set #waypoint_draw_scale yrh_map_tmp 2
execute if entity @s[tag=yrh.map.scale_4] run scoreboard players set #waypoint_draw_scale yrh_map_tmp 4
execute if entity @s[tag=yrh.map.scale_8] run scoreboard players set #waypoint_draw_scale yrh_map_tmp 8
execute if entity @s[tag=yrh.map.scale_16] run scoreboard players set #waypoint_draw_scale yrh_map_tmp 16
scoreboard players set #waypoint_draw_max yrh_map_tmp 3
execute if entity @s[tag=yrh.map.size_5] run scoreboard players set #waypoint_draw_max yrh_map_tmp 5
execute if entity @s[tag=yrh.map.size_7] run scoreboard players set #waypoint_draw_max yrh_map_tmp 7
execute if entity @s[tag=yrh.map.size_9] run scoreboard players set #waypoint_draw_max yrh_map_tmp 9
execute if entity @s[tag=yrh.map.size_11] run scoreboard players set #waypoint_draw_max yrh_map_tmp 11
execute if entity @s[tag=yrh.map.size_13] run scoreboard players set #waypoint_draw_max yrh_map_tmp 13
scoreboard players operation #waypoint_draw_max yrh_map_tmp *= #waypoint_draw_scale yrh_map_tmp
scoreboard players set #waypoint_draw_two yrh_map_tmp 2
scoreboard players operation #waypoint_draw_max yrh_map_tmp /= #waypoint_draw_two yrh_map_tmp
scoreboard players set #waypoint_draw_min yrh_map_tmp 0
scoreboard players operation #waypoint_draw_min yrh_map_tmp -= #waypoint_draw_max yrh_map_tmp
execute store result storage yrh.map:_ worldmap.waypoint_draw.scale int 1 run scoreboard players get #waypoint_draw_scale yrh_map_tmp
