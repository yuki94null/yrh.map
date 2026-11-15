tag @s remove yrh.map.waypoint_visuals_pending
execute unless data entity @s data.yrhmap.Owner run return 0
execute if entity @s[tag=yrh.map.waypoint_shared_pending] run function yrh.map:function/worldmap/waypoint/refresh_slots
tag @s remove yrh.map.waypoint_shared_pending
function yrh.map:function/worldmap/waypoint/markers/refresh_visibility_label
function yrh.map:function/worldmap/waypoint/read_page
data modify storage yrh.map:_ worldmap.waypoint_draw set value {slot:1,index:0}
data modify storage yrh.map:_ worldmap.waypoint_draw.owner set from entity @s data.yrhmap.Owner
data modify storage yrh.map:_ worldmap.owner_uuid set from storage yrh.map:_ worldmap.waypoint_draw.owner
function yrh.map:function/worldmap/owner_key
data modify storage yrh.map:_ worldmap.waypoint_draw merge from storage yrh.map:_ worldmap.owner_key
execute store result storage yrh.map:_ worldmap.waypoint_draw.map_id int 1 run scoreboard players get @s yrh_map_id
function yrh.map:function/worldmap/waypoint/markers/clear with storage yrh.map:_ worldmap.waypoint_draw
function yrh.map:function/worldmap/waypoint/markers/prepare_geometry
scoreboard players set #waypoint_draw_slot yrh_map_tmp 1
scoreboard players set #waypoint_draw_index yrh_map_tmp 0
execute if score #waypoint_page yrh_map_tmp matches 1.. run scoreboard players operation #waypoint_draw_index yrh_map_tmp = #waypoint_page yrh_map_tmp
execute if score #waypoint_page yrh_map_tmp matches 1.. run scoreboard players remove #waypoint_draw_index yrh_map_tmp 1
scoreboard players set #waypoint_draw_page_size yrh_map_tmp 12
scoreboard players operation #waypoint_draw_index yrh_map_tmp *= #waypoint_draw_page_size yrh_map_tmp
function yrh.map:function/worldmap/waypoint/markers/refresh_loop
execute unless entity @s[tag=yrh.map.rim_controls_hidden] run function yrh.map:function/worldmap/waypoint/markers/enable_hitboxes with storage yrh.map:_ worldmap.waypoint_draw
