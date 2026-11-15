execute unless data storage yrh.map:_ worldmap.waypoint.target run return run function yrh.map:function/worldmap/waypoint/empty_slot with storage yrh.map:_ worldmap.waypoint
data modify storage yrh.map:_ worldmap.waypoint_reference set from storage yrh.map:_ worldmap.waypoint.target
function yrh.map:function/worldmap/waypoint/read_chunk_reference
scoreboard players operation @s yrh_map_ax = #waypoint_ref_x yrh_map_tmp
scoreboard players operation @s yrh_map_az = #waypoint_ref_z yrh_map_tmp
# Scale 1 is represented by the absence of zoom tags.
tag @s remove yrh.map.scale_2
tag @s remove yrh.map.scale_4
tag @s remove yrh.map.scale_8
tag @s remove yrh.map.scale_16
function yrh.map:function/worldmap/controller/refresh_labels
function yrh.map:function/worldmap/commit_reference
