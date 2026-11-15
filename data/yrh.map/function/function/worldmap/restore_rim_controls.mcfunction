tag @s remove yrh.map.rim_controls_hidden
execute store result storage yrh.map:_ worldmap.rim_restore.map_id int 1 run scoreboard players get @s yrh_map_id
function yrh.map:function/worldmap/waypoint/markers/enable_hitboxes with storage yrh.map:_ worldmap.rim_restore
function yrh.map:function/worldmap/create_pan_controls
function yrh.map:function/worldmap/bind_map_parts
function yrh.map:function/worldmap/refresh_pin_label
