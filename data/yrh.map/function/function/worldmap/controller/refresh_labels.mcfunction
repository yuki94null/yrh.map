function yrh.map:function/worldmap/waypoint/board_size
function yrh.map:function/worldmap/waypoint/markers/read_pan_width
execute store result storage yrh.map:_ worldmap.controller_labels.map_id int 1 run scoreboard players get @s yrh_map_id
execute store result storage yrh.map:_ worldmap.controller_labels.size int 1 run scoreboard players get #waypoint_board_size yrh_map_tmp
execute store result storage yrh.map:_ worldmap.controller_labels.scale int 1 run scoreboard players get #waypoint_pan_width yrh_map_tmp
function yrh.map:function/worldmap/controller/write_labels with storage yrh.map:_ worldmap.controller_labels
