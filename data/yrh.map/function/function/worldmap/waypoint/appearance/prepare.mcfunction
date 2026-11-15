function yrh.map:function/worldmap/waypoint/read_page
execute if score #waypoint_page yrh_map_tmp matches 1.. run return run function yrh.map:function/worldmap/input/cannot_operate_click with storage yrh.map:_ worldmap.click
function yrh.map:function/worldmap/waypoint/prepare_clicked_slot
data remove storage yrh.map:_ worldmap.waypoint_admin.pin
function yrh.map:function/worldmap/waypoint/appearance/read_personal with storage yrh.map:_ worldmap.waypoint_admin
execute unless data storage yrh.map:_ worldmap.waypoint_admin.pin run return run function yrh.map:function/worldmap/waypoint/empty_slot with storage yrh.map:_ worldmap.waypoint_admin
$function yrh.map:function/worldmap/waypoint/appearance/$(action) with storage yrh.map:_ worldmap.waypoint_admin
