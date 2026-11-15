$execute unless data storage yrh.map:waypoints public[{id:"p_$(u0)_$(u1)_$(u2)_$(u3)_$(slot)"}] run return 0
function yrh.map:function/worldmap/waypoint/appearance/build_public_entry with storage yrh.map:_ worldmap.waypoint_admin
$data modify storage yrh.map:waypoints public[{id:"p_$(u0)_$(u1)_$(u2)_$(u3)_$(slot)"}] set from storage yrh.map:_ worldmap.waypoint_admin.entry
function yrh.map:function/worldmap/waypoint/markers/refresh_shared_maps
