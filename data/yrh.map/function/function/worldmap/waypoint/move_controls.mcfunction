execute if entity @s[tag=!yrh.map.rim_buttons_v31] run return run function yrh.map:function/worldmap/migrate_rim_buttons
function yrh.map:function/worldmap/waypoint/board_size
execute store result storage yrh.map:_ worldmap.resize_owner.size int 1 run scoreboard players get #waypoint_board_size yrh_map_tmp
function yrh.map:function/worldmap/waypoint/move_layout_for_size with storage yrh.map:_ worldmap.resize_owner
