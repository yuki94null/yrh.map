$execute if data storage yrh.map:waypoints public[{id:"p_$(u0)_$(u1)_$(u2)_$(u3)_$(slot)"}] run return run function yrh.map:function/worldmap/waypoint/unpublish with storage yrh.map:_ worldmap.waypoint_admin
$execute unless data storage yrh.map:waypoints players.p_$(u0)_$(u1)_$(u2)_$(u3).s$(slot) run return run function yrh.map:function/worldmap/waypoint/empty_slot with storage yrh.map:_ worldmap.waypoint_admin
function yrh.map:function/worldmap/waypoint/publish with storage yrh.map:_ worldmap.waypoint_admin
