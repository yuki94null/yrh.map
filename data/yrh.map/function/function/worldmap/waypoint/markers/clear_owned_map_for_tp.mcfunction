data modify storage yrh.map:_ worldmap.owner_uuid set from entity @s UUID
function yrh.map:function/worldmap/owner_key
return run function yrh.map:function/worldmap/waypoint/markers/resolve_owned_map_for_tp with storage yrh.map:_ worldmap.owner_key
