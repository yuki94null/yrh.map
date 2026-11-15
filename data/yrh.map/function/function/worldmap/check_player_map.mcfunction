$execute unless data storage yrh.map:map_ids players.p_$(u0)_$(u1)_$(u2)_$(u3) run return 0
data modify storage yrh.map:_ worldmap.replacement set value {}
$data modify storage yrh.map:_ worldmap.replacement.anchor set from storage yrh.map:map_ids players.p_$(u0)_$(u1)_$(u2)_$(u3).anchor
execute if data storage yrh.map:_ worldmap.replacement.anchor run function yrh.map:function/worldmap/replace_player_map with storage yrh.map:_ worldmap.replacement
$execute unless data storage yrh.map:map_ids players.p_$(u0)_$(u1)_$(u2)_$(u3) run return 0
$title @s actionbar {translate:"yrh.map.already_placed",fallback:"設置済みの地図があります。座標 %s（オーバーワールド）",color:"yellow",with:[{nbt:"players.p_$(u0)_$(u1)_$(u2)_$(u3).pos",storage:"yrh.map:map_ids"}]}
return 1
