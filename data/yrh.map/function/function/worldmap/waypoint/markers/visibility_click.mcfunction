$execute if score #map_click_access yrh_map_tmp matches 2 as @e[type=minecraft:interaction,tag=yrh.map.worldmap_anchor,scores={yrh_map_id=$(map_id)},limit=1] at @s run return run function yrh.map:function/worldmap/waypoint/markers/toggle_visibility
function yrh.map:function/worldmap/input/cannot_operate_click with storage yrh.map:_ worldmap.click
