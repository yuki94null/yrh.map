execute if loaded ~ ~ ~ positioned over world_surface run return run tp @s ~ ~ ~
function yrh.map:function/load_one_chunk/resolve_surface_cell
function yrh.map:function/load_one_chunk/read_surface_cell with storage yrh.map:_ surface_access.pos
execute if data storage yrh.map:_ surface_access.sample.height run return run function yrh.map:function/worldmap/waypoint/markers/teleport_cached
# No height is available for this unloaded destination.
tp @s ~ 320 ~
