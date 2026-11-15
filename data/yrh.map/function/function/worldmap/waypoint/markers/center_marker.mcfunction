data modify storage yrh.map:_ worldmap.waypoint_reference set from storage yrh.map:_ worldmap.click
function yrh.map:function/worldmap/waypoint/read_chunk_reference
execute store result storage yrh.map:_ worldmap.click.x int 1 run scoreboard players get #waypoint_ref_x yrh_map_tmp
execute store result storage yrh.map:_ worldmap.click.z int 1 run scoreboard players get #waypoint_ref_z yrh_map_tmp
function yrh.map:function/worldmap/waypoint/markers/center
