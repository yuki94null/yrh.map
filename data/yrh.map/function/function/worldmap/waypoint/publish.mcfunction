$execute unless data storage yrh.map:waypoints players.p_$(u0)_$(u1)_$(u2)_$(u3).s$(slot) run return run function yrh.map:function/worldmap/waypoint/empty_slot with storage yrh.map:_ worldmap.waypoint_admin
function yrh.map:function/worldmap/waypoint/appearance/ensure_metadata with storage yrh.map:_ worldmap.waypoint_admin
$execute if data storage yrh.map:waypoints public[{id:"p_$(u0)_$(u1)_$(u2)_$(u3)_$(slot)"}] run return run function yrh.map:function/worldmap/waypoint/appearance/sync_if_public with storage yrh.map:_ worldmap.waypoint_admin
execute unless data storage yrh.map:waypoints public run data modify storage yrh.map:waypoints public set value []
function yrh.map:function/worldmap/waypoint/appearance/build_public_entry with storage yrh.map:_ worldmap.waypoint_admin
data modify storage yrh.map:waypoints public append from storage yrh.map:_ worldmap.waypoint_admin.entry
function yrh.map:function/worldmap/waypoint/markers/refresh_shared_maps
