execute store result storage yrh.map:_ worldmap.fixed_indicator.map_id int 1 run scoreboard players get @s yrh_map_id
tag @s add yrh.map.fixed_indicator_v1
execute unless data entity @s data.yrhmap{Pinned:1b} run return run function yrh.map:function/worldmap/remove_fixed_indicator with storage yrh.map:_ worldmap.fixed_indicator
function yrh.map:function/worldmap/waypoint/board_size
# The backing adds a one-block border; place the pin in its northwest square.
scoreboard players add #waypoint_board_size yrh_map_tmp 1
execute store result storage yrh.map:_ worldmap.fixed_indicator.x float -0.5 run scoreboard players get #waypoint_board_size yrh_map_tmp
scoreboard players add #waypoint_board_size yrh_map_tmp 1
execute store result storage yrh.map:_ worldmap.fixed_indicator.z float -0.5 run scoreboard players get #waypoint_board_size yrh_map_tmp
execute at @s run function yrh.map:function/worldmap/update_fixed_indicator with storage yrh.map:_ worldmap.fixed_indicator
