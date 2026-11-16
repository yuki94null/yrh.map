$data modify storage yrh.map:_ worldmap.waypoint_draw.pin set from storage yrh.map:waypoints public[$(index)]
execute unless data storage yrh.map:_ worldmap.waypoint_draw.pin.x run return 0
execute unless data storage yrh.map:_ worldmap.waypoint_draw.pin.z run return 0
# The owner's public pins are already drawn from the personal slots on every page.
execute store result score #waypoint_pin_is_owner yrh_map_tmp run function yrh.map:function/worldmap/waypoint/markers/is_owner_pin with storage yrh.map:_ worldmap.waypoint_draw
execute if score #waypoint_pin_is_owner yrh_map_tmp matches 1 run return 0
data modify storage yrh.map:_ worldmap.waypoint_draw.palette_slot set value 1
execute if data storage yrh.map:_ worldmap.waypoint_draw.pin.slot run data modify storage yrh.map:_ worldmap.waypoint_draw.palette_slot set from storage yrh.map:_ worldmap.waypoint_draw.pin.slot
execute if data storage yrh.map:_ worldmap.waypoint_draw.pin.id unless data storage yrh.map:_ worldmap.waypoint_draw.pin.slot run function yrh.map:function/worldmap/waypoint/markers/legacy_palette_slot
function yrh.map:function/worldmap/waypoint/markers/locate
