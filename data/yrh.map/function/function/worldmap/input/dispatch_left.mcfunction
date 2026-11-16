execute if entity @s[tag=yrh.map.waypoint_placement] run return 0
execute store result score #map_click_access yrh_map_tmp run function yrh.map:function/worldmap/input/resolve_access with storage yrh.map:_ worldmap.click
execute if entity @s[tag=yrh.map.waypoint_hitbox] run return run function yrh.map:function/worldmap/waypoint/markers/click
execute if entity @s[tag=yrh.map.pan_control.diagonal] run return run function yrh.map:function/worldmap/controller/click_diagonal
execute if entity @s[tag=yrh.map.pan_control.waypoint_appearance] run return run function yrh.map:function/worldmap/waypoint/appearance/left
execute if entity @s[tag=yrh.map.pan_control.waypoint_visibility] run return run function yrh.map:function/worldmap/waypoint/markers/visibility_click with storage yrh.map:_ worldmap.click
execute if entity @s[tag=yrh.map.pan_control.waypoint_delete] run return run function yrh.map:function/worldmap/waypoint/slot_delete
execute if entity @s[tag=yrh.map.pan_control.access] run return run function yrh.map:function/worldmap/access/click with storage yrh.map:_ worldmap.click
execute if entity @s[tag=yrh.map.pan_control.waypoint_page] run return run function yrh.map:function/worldmap/waypoint/page_left with storage yrh.map:_ worldmap.click
execute if entity @s[tag=yrh.map.pan_control.waypoint] run return run function yrh.map:function/worldmap/waypoint/slot_left
$execute if entity @s[tag=yrh.map.pan_control.pan] run return run function yrh.map:function/worldmap/controller/click_pan {map_id:$(map_id),player:$(player),yaw_offset:180}
$execute if entity @s[tag=yrh.map.pan_control.size] run return run function yrh.map:function/worldmap/input/run_reverse_pan {map_id:$(map_id),action:"shrink_map",message:"yrh.map.resize",fallback:"地図のサイズを切り替えました",player:$(player)}
$execute if entity @s[tag=yrh.map.pan_control.scale] as @e[type=minecraft:interaction,tag=yrh.map.worldmap_anchor,scores={yrh_map_id=$(map_id)},limit=1] at @s if score #map_click_access yrh_map_tmp matches 1.. run return run function yrh.map:function/worldmap/zoom_in
execute if entity @s[tag=yrh.map.pan_control.scale] run return run function yrh.map:function/worldmap/input/cannot_operate_click with storage yrh.map:_ worldmap.click
function yrh.map:function/worldmap/input/dispatch_right with storage yrh.map:_ worldmap.click
