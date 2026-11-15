data modify storage yrh.map:_ worldmap.owner_uuid set from entity @s data.yrhmap.Owner
function yrh.map:function/worldmap/owner_key
data modify storage yrh.map:_ worldmap.waypoint_admin merge from storage yrh.map:_ worldmap.owner_key
