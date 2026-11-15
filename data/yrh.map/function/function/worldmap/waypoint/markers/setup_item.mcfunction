data merge entity @s {Tags:["yrh.map.waypoint_marker"],item_display:"none",billboard:"fixed",brightness:{block:15,sky:15},transformation:{translation:[0f,0f,0f],left_rotation:[-0.7071068f,0f,0f,0.7071068f],right_rotation:[0f,0f,0f,1f],scale:[0.30f,0.30f,0.08f]}}
data modify entity @s item set from storage yrh.map:_ worldmap.waypoint_draw.item
execute store result score @s yrh_map_id run data get storage yrh.map:_ worldmap.waypoint_draw.map_id
