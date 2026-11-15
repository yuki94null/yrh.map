execute unless data storage yrh.map:_ worldmap.waypoint.target run return run function yrh.map:function/worldmap/waypoint/empty_slot with storage yrh.map:_ worldmap.waypoint
execute store result score @s yrh_map_ax run data get storage yrh.map:_ worldmap.waypoint.target.x
execute store result score @s yrh_map_az run data get storage yrh.map:_ worldmap.waypoint.target.z
function yrh.map:function/worldmap/commit_reference
