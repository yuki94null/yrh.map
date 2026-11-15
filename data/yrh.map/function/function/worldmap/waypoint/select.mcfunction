function yrh.map:function/worldmap/waypoint/resolve_target
execute if data storage yrh.map:_ worldmap.waypoint.target run return run function yrh.map:function/worldmap/waypoint/select_and_view
function yrh.map:function/worldmap/waypoint/read_page
execute if score #waypoint_page yrh_map_tmp matches 1.. run return run function yrh.map:function/worldmap/waypoint/empty_slot with storage yrh.map:_ worldmap.waypoint
function yrh.map:function/worldmap/waypoint/save
function yrh.map:function/worldmap/waypoint/select_slot
function yrh.map:function/worldmap/waypoint/refresh_slots
