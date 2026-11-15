$data modify storage yrh.map:_ worldmap.waypoint_draw.item set from storage yrh.map:_ worldmap.waypoint_palette.s$(palette_slot)
execute if data storage yrh.map:_ worldmap.waypoint_draw.pin{custom:1b} if data storage yrh.map:_ worldmap.waypoint_draw.pin.item.id run data modify storage yrh.map:_ worldmap.waypoint_draw.item set from storage yrh.map:_ worldmap.waypoint_draw.pin.item
