execute if data entity @s data.yrhmap.WaypointSelected if data storage yrh.map:_ worldmap.click{sneaking:1b} run return run function yrh.map:function/worldmap/waypoint/clear_selection
execute if data storage yrh.map:_ worldmap.click{sneaking:1b} run return 0
function yrh.map:function/worldmap/waypoint/resolve_target
function yrh.map:function/worldmap/waypoint/read_page
execute if data storage yrh.map:_ worldmap.waypoint.target run return run function yrh.map:function/worldmap/waypoint/select_and_view
execute if score #waypoint_page yrh_map_tmp matches 1.. run return run function yrh.map:function/worldmap/waypoint/empty_slot with storage yrh.map:_ worldmap.waypoint
function yrh.map:function/worldmap/waypoint/placement/arm
