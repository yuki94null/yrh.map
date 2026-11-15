data modify storage yrh.map:_ worldmap.waypoint_admin set from storage yrh.map:_ worldmap.waypoint_draw
data modify storage yrh.map:_ worldmap.waypoint_admin.player set from storage yrh.map:_ worldmap.waypoint_draw.owner
function yrh.map:function/worldmap/waypoint/appearance/ensure_metadata with storage yrh.map:_ worldmap.waypoint_admin
function yrh.map:function/worldmap/waypoint/appearance/sync_if_public with storage yrh.map:_ worldmap.waypoint_admin
$data modify storage yrh.map:_ worldmap.waypoint_draw.pin set from storage yrh.map:waypoints players.p_$(u0)_$(u1)_$(u2)_$(u3).s$(slot)
