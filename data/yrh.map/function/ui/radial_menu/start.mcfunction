data modify storage yrh.map:_ worldmap.owner_uuid set from entity @s UUID
function yrh.map:function/worldmap/owner_key
data modify storage yrh.map:ui session set value {}
data modify storage yrh.map:ui session.player set from entity @s UUID
data modify storage yrh.map:ui session merge from storage yrh.map:_ worldmap.owner_key
function yrh.map:ui/radial_menu/bind with storage yrh.map:ui session
