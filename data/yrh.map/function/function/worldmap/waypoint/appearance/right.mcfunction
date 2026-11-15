execute unless score #map_click_access yrh_map_tmp matches 2 run return run function yrh.map:function/worldmap/input/cannot_operate_click with storage yrh.map:_ worldmap.click
execute store result storage yrh.map:_ worldmap.click.slot int 1 run data get entity @s data.yrhmap.WaypointSlot
function yrh.map:function/worldmap/waypoint/appearance/owner_action {action:"set"}
