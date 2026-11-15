data modify storage yrh.map:_ worldmap.waypoint_admin.player set from entity @s UUID
data modify storage yrh.map:_ worldmap.owner_uuid set from entity @s UUID
function yrh.map:function/worldmap/owner_key
data modify storage yrh.map:_ worldmap.waypoint_admin merge from storage yrh.map:_ worldmap.owner_key
execute store result score #waypoint_admin_slot yrh_map_tmp run data get storage yrh.map:_ worldmap.waypoint_admin.slot
