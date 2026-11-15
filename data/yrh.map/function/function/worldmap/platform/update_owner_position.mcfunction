
data modify storage yrh.map:_ worldmap.owner_uuid set from entity @s data.yrhmap.Owner
function yrh.map:function/worldmap/owner_key
function yrh.map:function/worldmap/platform/write_owner_position with storage yrh.map:_ worldmap.owner_key
