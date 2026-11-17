$execute if data storage yrh.map:_ worldmap.waypoint_draw.pin{author_uuid:$(owner)} run return 1
execute if data storage yrh.map:_ worldmap.waypoint_draw.pin.author_uuid run return 0
execute unless data storage yrh.map:_ worldmap.waypoint_draw.pin.id run return 0
# Legacy shared pins identify the owner in the ID, followed by a one- or two-digit slot.
data remove storage yrh.map:_ worldmap.waypoint_draw.legacy_owner
data modify storage yrh.map:_ worldmap.waypoint_draw.legacy_owner set string storage yrh.map:_ worldmap.waypoint_draw.pin.id 0 -2
$execute if data storage yrh.map:_ worldmap.waypoint_draw{legacy_owner:"p_$(u0)_$(u1)_$(u2)_$(u3)"} run return 1
data modify storage yrh.map:_ worldmap.waypoint_draw.legacy_owner set string storage yrh.map:_ worldmap.waypoint_draw.pin.id 0 -3
$execute if data storage yrh.map:_ worldmap.waypoint_draw{legacy_owner:"p_$(u0)_$(u1)_$(u2)_$(u3)"} run return 1
return 0
