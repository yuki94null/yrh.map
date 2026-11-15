execute unless score #map_click_access yrh_map_tmp matches 1.. run return run function yrh.map:function/worldmap/input/cannot_operate_click with storage yrh.map:_ worldmap.click
execute if score #map_click_access yrh_map_tmp matches 1 unless data entity @s data.yrhmap.Waypoint{Shared:1b} run return run function yrh.map:function/worldmap/input/cannot_operate_click with storage yrh.map:_ worldmap.click
data modify storage yrh.map:_ worldmap.click.x set from entity @s data.yrhmap.Waypoint.x
data modify storage yrh.map:_ worldmap.click.z set from entity @s data.yrhmap.Waypoint.z
function yrh.map:function/worldmap/waypoint/markers/activate_hitbox with storage yrh.map:_ worldmap.click
