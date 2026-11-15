$execute unless data storage yrh.map:map_ids players.p_$(u0)_$(u1)_$(u2)_$(u3) run return 1
data modify storage yrh.map:_ worldmap.waypoint_tp set value {}
data modify storage yrh.map:_ worldmap.waypoint_tp.player set from entity @s UUID
$data modify storage yrh.map:_ worldmap.waypoint_tp.anchor set from storage yrh.map:map_ids players.p_$(u0)_$(u1)_$(u2)_$(u3).anchor
execute if data storage yrh.map:_ worldmap.waypoint_tp.anchor run function yrh.map:function/worldmap/waypoint/markers/remove_owned_map_for_tp with storage yrh.map:_ worldmap.waypoint_tp
$execute unless data storage yrh.map:map_ids players.p_$(u0)_$(u1)_$(u2)_$(u3) run return 1
title @s actionbar {text:"設置済みの地図を撤去できないため、テレポートできません。",color:"red"}
return 0
