function yrh.map:function/worldmap/waypoint/read_page
execute if score #waypoint_page yrh_map_tmp matches 1.. run return 0
data modify storage yrh.map:_ worldmap.waypoint set from storage yrh.map:_ worldmap.click
function yrh.map:function/worldmap/waypoint/resolve_owner
data modify storage yrh.map:_ worldmap.waypoint.target set from storage yrh.map:waypoint_placement target
execute store result score #waypoint_saved yrh_map_tmp run function yrh.map:function/worldmap/waypoint/save_personal with storage yrh.map:_ worldmap.waypoint
execute unless score #waypoint_saved yrh_map_tmp matches 1 run return 0

function yrh.map:function/worldmap/waypoint/prepare_clicked_slot
function yrh.map:function/worldmap/waypoint/appearance/ensure_metadata with storage yrh.map:_ worldmap.waypoint_admin
function yrh.map:function/worldmap/waypoint/refresh_slots
