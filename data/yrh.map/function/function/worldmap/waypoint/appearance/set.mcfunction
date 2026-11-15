execute if data storage yrh.map:_ worldmap.waypoint_admin.pin{custom:1b} if data storage yrh.map:_ worldmap.waypoint_admin.pin.item.id run return run function yrh.map:function/worldmap/waypoint/select
data remove storage yrh.map:_ worldmap.waypoint_admin.item
$data modify storage yrh.map:_ worldmap.waypoint_admin.item set from entity @a[nbt={UUID:$(player)},limit=1] SelectedItem
$execute unless data storage yrh.map:_ worldmap.waypoint_admin.item.id run return run title @a[nbt={UUID:$(player)},limit=1] actionbar {text:"メインハンドに外見用のアイテムを持ってください",color:"red"}
data modify storage yrh.map:_ worldmap.waypoint_admin.item.count set value 1
$data modify storage yrh.map:waypoints players.p_$(u0)_$(u1)_$(u2)_$(u3).s$(slot).item set from storage yrh.map:_ worldmap.waypoint_admin.item
$data modify storage yrh.map:waypoints players.p_$(u0)_$(u1)_$(u2)_$(u3).s$(slot).custom set value 1b
function yrh.map:function/worldmap/waypoint/appearance/appearance_changed
