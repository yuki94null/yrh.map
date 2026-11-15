function yrh.map:function/worldmap/waypoint/select_slot
data modify entity @s data.yrhmap.WaypointPlacement set from storage yrh.map:_ worldmap.waypoint.slot
function yrh.map:function/worldmap/waypoint/board_size
data modify storage yrh.map:waypoint_placement hitbox set value {}
execute store result storage yrh.map:waypoint_placement hitbox.size int 1 run scoreboard players get #waypoint_board_size yrh_map_tmp
execute store result storage yrh.map:waypoint_placement hitbox.map_id int 1 run scoreboard players get @s yrh_map_id
function yrh.map:function/worldmap/waypoint/placement/spawn_hitbox with storage yrh.map:waypoint_placement hitbox
function yrh.map:function/worldmap/waypoint/placement/prompt with storage yrh.map:_ worldmap.waypoint
