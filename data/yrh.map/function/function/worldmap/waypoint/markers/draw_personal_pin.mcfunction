# The side slot shows a shared entry. Draw the owner's personal pin independently.
data remove storage yrh.map:_ worldmap.waypoint_draw.pin
$data modify storage yrh.map:_ worldmap.waypoint_draw.pin set from storage yrh.map:waypoints players.p_$(u0)_$(u1)_$(u2)_$(u3).s$(slot)
execute unless data storage yrh.map:_ worldmap.waypoint_draw.pin.x run return 0
execute unless data storage yrh.map:_ worldmap.waypoint_draw.pin.z run return 0
data modify storage yrh.map:_ worldmap.waypoint_draw.palette_slot set from storage yrh.map:_ worldmap.waypoint_draw.slot
function yrh.map:function/worldmap/waypoint/appearance/resolve_item with storage yrh.map:_ worldmap.waypoint_draw
function yrh.map:function/worldmap/waypoint/markers/locate
