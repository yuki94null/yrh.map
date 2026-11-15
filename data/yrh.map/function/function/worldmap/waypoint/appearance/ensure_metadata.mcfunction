$data modify storage yrh.map:waypoints players.p_$(u0)_$(u1)_$(u2)_$(u3).s$(slot).slot set value $(slot)
$data modify storage yrh.map:waypoints players.p_$(u0)_$(u1)_$(u2)_$(u3).s$(slot).author_uuid set from storage yrh.map:_ worldmap.waypoint_admin.player
$execute if data storage yrh.map:waypoints players.p_$(u0)_$(u1)_$(u2)_$(u3).s$(slot).author run return 0
data remove storage yrh.map:_ worldmap.pin_author
$data modify storage yrh.map:_ worldmap.pin_author set from storage yrh.map:waypoints authors.p_$(u0)_$(u1)_$(u2)_$(u3)
$execute unless data storage yrh.map:_ worldmap.pin_author as @a[nbt={UUID:$(player)},limit=1] at @s run function yrh.map:function/worldmap/waypoint/appearance/read_author
$data modify storage yrh.map:waypoints players.p_$(u0)_$(u1)_$(u2)_$(u3).s$(slot).author set from storage yrh.map:_ worldmap.pin_author
$execute if data storage yrh.map:_ worldmap.pin_author run data modify storage yrh.map:waypoints authors.p_$(u0)_$(u1)_$(u2)_$(u3) set from storage yrh.map:_ worldmap.pin_author
