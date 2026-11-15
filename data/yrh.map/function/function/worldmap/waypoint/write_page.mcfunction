function yrh.map:function/worldmap/waypoint/clear_selection
execute store result entity @s data.yrhmap.WaypointPage int 1 run scoreboard players get #waypoint_page yrh_map_tmp
function yrh.map:function/worldmap/waypoint/refresh_page_label
function yrh.map:function/worldmap/waypoint/refresh_slots
