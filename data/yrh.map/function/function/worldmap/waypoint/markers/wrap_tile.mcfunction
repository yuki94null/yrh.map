scoreboard players operation @s yrh_map_tx -= #map_min yrh_map_tmp
scoreboard players operation @s yrh_map_tz -= #map_min yrh_map_tmp
scoreboard players operation @s yrh_map_tx %= #waypoint_pan_span yrh_map_tmp
scoreboard players operation @s yrh_map_tz %= #waypoint_pan_span yrh_map_tmp
execute if score @s yrh_map_tx matches ..-1 run scoreboard players operation @s yrh_map_tx += #waypoint_pan_span yrh_map_tmp
execute if score @s yrh_map_tz matches ..-1 run scoreboard players operation @s yrh_map_tz += #waypoint_pan_span yrh_map_tmp
scoreboard players operation @s yrh_map_tx += #map_min yrh_map_tmp
scoreboard players operation @s yrh_map_tz += #map_min yrh_map_tmp
