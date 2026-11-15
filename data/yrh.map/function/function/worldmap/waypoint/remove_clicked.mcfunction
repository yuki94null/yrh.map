function yrh.map:function/worldmap/waypoint/read_page
execute if score #waypoint_page yrh_map_tmp matches 1.. run return run function yrh.map:function/worldmap/input/cannot_operate_click with storage yrh.map:_ worldmap.click
function yrh.map:function/worldmap/waypoint/prepare_clicked_slot
execute store result score #waypoint_clicked yrh_map_tmp run data get storage yrh.map:_ worldmap.waypoint_admin.slot
execute store result score #waypoint_selected yrh_map_tmp run data get entity @s data.yrhmap.WaypointSelected
execute if score #waypoint_clicked yrh_map_tmp = #waypoint_selected yrh_map_tmp run function yrh.map:function/worldmap/waypoint/clear_selection
function yrh.map:function/worldmap/waypoint/delete with storage yrh.map:_ worldmap.waypoint_admin
function yrh.map:function/worldmap/waypoint/refresh_slots
