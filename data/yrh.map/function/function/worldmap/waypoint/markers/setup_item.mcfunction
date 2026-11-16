data merge entity @s {Tags:["yrh.map.waypoint_marker"],item_display:"none",billboard:"fixed",brightness:{block:15,sky:15},transformation:{translation:[0f,0f,0f],left_rotation:[0.7071068f,0f,0f,0.7071068f],right_rotation:[0f,0f,1f,0f],scale:[0.30f,0.30f,0.08f]}}
data modify entity @s item set from storage yrh.map:_ worldmap.waypoint_draw.item
# Keep the icon legible even when one pixel covers many terrain blocks.
execute if score #waypoint_draw_scale yrh_map_tmp matches 2 run data modify entity @s transformation.scale set value [0.285f,0.285f,0.08f]
execute if score #waypoint_draw_scale yrh_map_tmp matches 4 run data modify entity @s transformation.scale set value [0.27f,0.27f,0.08f]
execute if score #waypoint_draw_scale yrh_map_tmp matches 8 run data modify entity @s transformation.scale set value [0.255f,0.255f,0.08f]
execute if score #waypoint_draw_scale yrh_map_tmp matches 16 run data modify entity @s transformation.scale set value [0.24f,0.24f,0.08f]
function yrh.map:function/worldmap/waypoint/markers/bind_part with storage yrh.map:_ worldmap.waypoint_draw
