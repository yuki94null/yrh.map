tag @s add yrh.map.waypoint_visuals_pending

function yrh.map:function/worldmap/waypoint/read_page
data modify storage yrh.map:_ worldmap.slot_label set value {slot:1,index:0}
execute store result storage yrh.map:_ worldmap.slot_label.map_id int 1 run scoreboard players get @s yrh_map_id
data modify storage yrh.map:_ worldmap.owner_uuid set from entity @s data.yrhmap.Owner
function yrh.map:function/worldmap/owner_key
data modify storage yrh.map:_ worldmap.slot_label merge from storage yrh.map:_ worldmap.owner_key
scoreboard players set #waypoint_label_index yrh_map_tmp 0
execute if score #waypoint_page yrh_map_tmp matches 1.. run scoreboard players operation #waypoint_label_index yrh_map_tmp = #waypoint_page yrh_map_tmp
execute if score #waypoint_page yrh_map_tmp matches 1.. run scoreboard players remove #waypoint_label_index yrh_map_tmp 1
scoreboard players set #waypoint_page_length yrh_map_tmp 12
scoreboard players operation #waypoint_label_index yrh_map_tmp *= #waypoint_page_length yrh_map_tmp
scoreboard players set #waypoint_label_slot yrh_map_tmp 1
function yrh.map:function/worldmap/waypoint/refresh_slot_loop
data modify storage yrh.map:_ worldmap.waypoint_selection set value {color:"yellow"}
execute if data entity @s data.yrhmap.WaypointSelected run function yrh.map:function/worldmap/waypoint/refresh_selection
