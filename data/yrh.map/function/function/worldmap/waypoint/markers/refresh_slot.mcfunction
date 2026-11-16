data remove storage yrh.map:_ worldmap.waypoint_draw.pin
$execute if score #waypoint_page yrh_map_tmp matches 0 run data modify storage yrh.map:_ worldmap.waypoint_draw.pin set from storage yrh.map:waypoints players.p_$(u0)_$(u1)_$(u2)_$(u3).s$(slot)
$execute if score #waypoint_page yrh_map_tmp matches 1.. run data modify storage yrh.map:_ worldmap.waypoint_draw.pin set from storage yrh.map:waypoints public[$(index)]
$execute if score #waypoint_page yrh_map_tmp matches 0 if data storage yrh.map:_ worldmap.waypoint_draw.pin unless data storage yrh.map:_ worldmap.waypoint_draw.pin.author if entity @a[nbt={UUID:$(owner)},limit=1] run function yrh.map:function/worldmap/waypoint/markers/upgrade_personal with storage yrh.map:_ worldmap.waypoint_draw
data modify storage yrh.map:_ worldmap.waypoint_draw.palette_slot set from storage yrh.map:_ worldmap.waypoint_draw.slot
execute if data storage yrh.map:_ worldmap.waypoint_draw.pin.slot run data modify storage yrh.map:_ worldmap.waypoint_draw.palette_slot set from storage yrh.map:_ worldmap.waypoint_draw.pin.slot
execute if data storage yrh.map:_ worldmap.waypoint_draw.pin.id unless data storage yrh.map:_ worldmap.waypoint_draw.pin.slot run function yrh.map:function/worldmap/waypoint/markers/legacy_palette_slot
function yrh.map:function/worldmap/waypoint/appearance/resolve_item with storage yrh.map:_ worldmap.waypoint_draw
function yrh.map:function/worldmap/waypoint/appearance/update_preview with storage yrh.map:_ worldmap.waypoint_draw
execute if data storage yrh.map:_ worldmap.waypoint_draw{preview_only:1b} run return 0
execute if score #waypoint_page yrh_map_tmp matches 1.. run return 0
execute unless data storage yrh.map:_ worldmap.waypoint_draw.pin.x run return 0
execute unless data storage yrh.map:_ worldmap.waypoint_draw.pin.z run return 0
function yrh.map:function/worldmap/waypoint/markers/locate
