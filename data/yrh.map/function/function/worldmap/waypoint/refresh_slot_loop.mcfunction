
execute if score #waypoint_label_slot yrh_map_tmp matches 13.. run return 0
execute store result storage yrh.map:_ worldmap.slot_label.slot int 1 run scoreboard players get #waypoint_label_slot yrh_map_tmp
execute store result storage yrh.map:_ worldmap.slot_label.index int 1 run scoreboard players get #waypoint_label_index yrh_map_tmp
function yrh.map:function/worldmap/waypoint/refresh_slot with storage yrh.map:_ worldmap.slot_label
scoreboard players add #waypoint_label_slot yrh_map_tmp 1
scoreboard players add #waypoint_label_index yrh_map_tmp 1
function yrh.map:function/worldmap/waypoint/refresh_slot_loop
