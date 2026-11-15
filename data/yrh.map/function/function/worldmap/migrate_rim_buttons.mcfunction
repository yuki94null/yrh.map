execute store result storage yrh.map:_ worldmap.rim_migration.map_id int 1 run scoreboard players get @s yrh_map_id
tag @s remove yrh.map.waypoint_buttons_present
function yrh.map:function/worldmap/waypoint/remove_parts with storage yrh.map:_ worldmap.rim_migration
execute if entity @s[tag=yrh.map.rim_controls_hidden] run return run function yrh.map:function/worldmap/waypoint/rebuild_hidden
function yrh.map:function/worldmap/hide_rim_controls with storage yrh.map:_ worldmap.rim_migration
function yrh.map:function/worldmap/restore_rim_controls
