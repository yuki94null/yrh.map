function yrh.map:function/worldmap/waypoint/read_page
execute if score #waypoint_page yrh_map_tmp matches 1.. run return 0
data modify storage yrh.map:_ worldmap.waypoint set from storage yrh.map:_ worldmap.click
function yrh.map:function/worldmap/waypoint/resolve_owner
data modify storage yrh.map:_ worldmap.waypoint.target set value {x:0,z:0}
execute store result storage yrh.map:_ worldmap.waypoint.target.x int 1 run scoreboard players get @s yrh_map_ax
execute store result storage yrh.map:_ worldmap.waypoint.target.z int 1 run scoreboard players get @s yrh_map_az
function yrh.map:function/worldmap/waypoint/save_personal with storage yrh.map:_ worldmap.waypoint

function yrh.map:function/worldmap/waypoint/prepare_clicked_slot
function yrh.map:function/worldmap/waypoint/appearance/ensure_metadata with storage yrh.map:_ worldmap.waypoint_admin
tag @s add yrh.map.waypoint_visuals_pending
