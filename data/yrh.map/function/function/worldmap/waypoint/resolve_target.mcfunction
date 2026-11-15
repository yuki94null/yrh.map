function yrh.map:function/worldmap/waypoint/read_page
data modify storage yrh.map:_ worldmap.waypoint set from storage yrh.map:_ worldmap.click
execute if score #waypoint_page yrh_map_tmp matches 1.. run return run function yrh.map:function/worldmap/waypoint/resolve_shared
function yrh.map:function/worldmap/waypoint/resolve_owner
function yrh.map:function/worldmap/waypoint/read_personal with storage yrh.map:_ worldmap.waypoint
