$execute if data storage yrh.map:waypoints players.p_$(u0)_$(u1)_$(u2)_$(u3).s$(slot) run return 0
$return run data modify storage yrh.map:waypoints players.p_$(u0)_$(u1)_$(u2)_$(u3).s$(slot) set from storage yrh.map:_ worldmap.waypoint.target
