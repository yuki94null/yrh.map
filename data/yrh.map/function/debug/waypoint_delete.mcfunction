execute unless entity @s[type=minecraft:player] run return 0
$data modify storage yrh.map:_ worldmap.waypoint_admin set value {slot:$(slot)}
function yrh.map:function/worldmap/waypoint/prepare_admin
execute unless score #waypoint_admin_slot yrh_map_tmp matches 1..12 run return run title @s actionbar {text:"ピン枠は1〜12で指定してください",color:"red"}
function yrh.map:function/worldmap/waypoint/delete with storage yrh.map:_ worldmap.waypoint_admin
function yrh.map:function/worldmap/waypoint/markers/refresh_owner_map with storage yrh.map:_ worldmap.waypoint_admin
