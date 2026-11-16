execute store result score #map_click_access yrh_map_tmp run function yrh.map:function/worldmap/input/resolve_access with storage yrh.map:_ worldmap.click
execute if entity @s[tag=yrh.map.waypoint_placement] run return run function yrh.map:function/worldmap/waypoint/placement/dispatch with storage yrh.map:_ worldmap.click
execute if entity @s[tag=yrh.map.waypoint_hitbox] run return run function yrh.map:function/worldmap/waypoint/markers/click
execute if entity @s[tag=yrh.map.pan_control.diagonal] run return run function yrh.map:function/worldmap/controller/click_diagonal
execute if entity @s[tag=yrh.map.pan_control.waypoint_appearance] run return run function yrh.map:function/worldmap/waypoint/appearance/right
execute if entity @s[tag=yrh.map.pan_control.waypoint_visibility] run return run function yrh.map:function/worldmap/waypoint/markers/visibility_click with storage yrh.map:_ worldmap.click
execute if entity @s[tag=yrh.map.pan_control.waypoint_delete] run return run function yrh.map:function/worldmap/waypoint/slot_delete
execute if entity @s[tag=yrh.map.pan_control.access] run return run function yrh.map:function/worldmap/access/click with storage yrh.map:_ worldmap.click
execute if entity @s[tag=yrh.map.pan_control.waypoint_page] run return run function yrh.map:function/worldmap/waypoint/page_right with storage yrh.map:_ worldmap.click
execute if entity @s[tag=yrh.map.pan_control.waypoint] run return run function yrh.map:function/worldmap/waypoint/slot_right
execute if entity @s[tag=yrh.map.pan_control.remove] run return run function yrh.map:function/worldmap/remove_clicked_map with storage yrh.map:_ worldmap.click
execute if entity @s[tag=yrh.map.pan_control.pin] run return run function yrh.map:function/worldmap/toggle_clicked_pin with storage yrh.map:_ worldmap.click
$execute if entity @s[tag=yrh.map.pan_control.scale] as @e[type=minecraft:interaction,tag=yrh.map.worldmap_anchor,scores={yrh_map_id=$(map_id)},limit=1] if score #map_click_access yrh_map_tmp matches 1.. at @s run return run function yrh.map:function/worldmap/zoom_out
$execute if entity @s[tag=yrh.map.pan_control.pan] run return run function yrh.map:function/worldmap/controller/click_pan {map_id:$(map_id),player:$(player),yaw_offset:0}
$execute if entity @s[tag=yrh.map.pan_control.home] as @e[type=minecraft:interaction,tag=yrh.map.worldmap_anchor,scores={yrh_map_id=$(map_id)},limit=1] at @s if score #map_click_access yrh_map_tmp matches 1.. run return run function yrh.map:function/worldmap/input/run_map_control {action:"return_home",message:"yrh.map.home",fallback:"設置地点を表示",player:$(player)}
$execute if entity @s[tag=yrh.map.pan_control.size] as @e[type=minecraft:interaction,tag=yrh.map.worldmap_anchor,scores={yrh_map_id=$(map_id)},limit=1] at @s if data entity @s data.yrhmap{Owner:$(player)} run return run function yrh.map:function/worldmap/input/run_resize_control {action:"grow_map",player:$(player)}
$execute if entity @s[tag=yrh.map.pan_control.reload] as @e[type=minecraft:interaction,tag=yrh.map.worldmap_anchor,scores={yrh_map_id=$(map_id)},limit=1] at @s if data entity @s data.yrhmap{Owner:$(player)} run return run function yrh.map:function/worldmap/input/run_map_control {action:"load_reference",message:"yrh.map.reload",fallback:"地図の更新を要求しました",player:$(player)}
$title @a[nbt={UUID:$(player)},limit=1] actionbar {translate:"yrh.map.cannot_operate",fallback:"この地図は操作できません",color:"red"}
