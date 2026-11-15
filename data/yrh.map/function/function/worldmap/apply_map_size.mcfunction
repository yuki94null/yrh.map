execute if data entity @s data.yrhmap.WaypointPlacement run function yrh.map:function/worldmap/waypoint/clear_selection
execute store result storage yrh.map:_ worldmap.resize_owner.map_id int 1 run scoreboard players get @s yrh_map_id
function yrh.map:function/worldmap/remove_resize_controls with storage yrh.map:_ worldmap.resize_owner
tag @s remove yrh.map.size_5
tag @s remove yrh.map.size_7
tag @s remove yrh.map.size_9
tag @s remove yrh.map.size_11
tag @s remove yrh.map.size_13
execute if score #resize_next yrh_map_tmp matches 5 run tag @s add yrh.map.size_5
execute if score #resize_next yrh_map_tmp matches 7 run tag @s add yrh.map.size_7
execute if score #resize_next yrh_map_tmp matches 9 run tag @s add yrh.map.size_9
execute if score #resize_next yrh_map_tmp matches 11 run tag @s add yrh.map.size_11
execute if score #resize_next yrh_map_tmp matches 13 run tag @s add yrh.map.size_13
scoreboard players set #resize_radius yrh_map_tmp 2
execute if score #resize_next yrh_map_tmp matches 7 run scoreboard players set #resize_radius yrh_map_tmp 3
execute if score #resize_next yrh_map_tmp matches 9 run scoreboard players set #resize_radius yrh_map_tmp 4
execute if score #resize_next yrh_map_tmp matches 11 run scoreboard players set #resize_radius yrh_map_tmp 5
execute if score #resize_next yrh_map_tmp matches 13 run scoreboard players set #resize_radius yrh_map_tmp 6
scoreboard players set #resize_min yrh_map_tmp 0
scoreboard players operation #resize_min yrh_map_tmp -= #resize_radius yrh_map_tmp
function yrh.map:function/worldmap/trim_owned_tiles with storage yrh.map:_ worldmap.resize_owner
data modify storage yrh.map:_ worldmap.resizing set value 1b
function yrh.map:function/worldmap/create_tiles
data merge entity @s {width:0f,height:0f}
function yrh.map:function/worldmap/create_pan_controls
function yrh.map:function/worldmap/create_map_backing
function yrh.map:function/worldmap/platform/mark_replaced with storage yrh.map:_ worldmap.resize_owner
function yrh.map:function/worldmap/platform/create
function yrh.map:function/worldmap/bind_map_parts
function yrh.map:function/worldmap/controller/refresh_labels
execute if data entity @s data.yrhmap{Pinned:1b} run function yrh.map:function/worldmap/refresh_fixed_indicator
function yrh.map:function/worldmap/refresh_pin_label
data modify storage yrh.map:_ worldmap.reload set value 1b
function yrh.map:function/worldmap/commit_reference
data remove storage yrh.map:_ worldmap.resizing
data remove storage yrh.map:_ worldmap.reload
return 1
