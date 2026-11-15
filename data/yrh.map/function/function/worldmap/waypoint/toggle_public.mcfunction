function yrh.map:function/worldmap/waypoint/read_page
execute if score #waypoint_page yrh_map_tmp matches 1.. run return run function yrh.map:function/worldmap/input/cannot_operate_click with storage yrh.map:_ worldmap.click
function yrh.map:function/worldmap/waypoint/prepare_clicked_slot
function yrh.map:function/worldmap/waypoint/toggle_personal_public with storage yrh.map:_ worldmap.waypoint_admin
function yrh.map:function/worldmap/waypoint/refresh_slots
