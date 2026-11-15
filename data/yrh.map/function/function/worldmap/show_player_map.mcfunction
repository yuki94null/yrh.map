$execute unless data storage yrh.map:map_ids players.p_$(u0)_$(u1)_$(u2)_$(u3).pos run return run title @s actionbar {translate:"yrh.map.not_placed",fallback:"設置中の地図はありません。",color:"gray"}
$title @s actionbar {translate:"yrh.map.location",fallback:"地図の設置座標 %s（オーバーワールド、X・Y・Z）",color:"yellow",with:[{nbt:"players.p_$(u0)_$(u1)_$(u2)_$(u3).pos",storage:"yrh.map:map_ids"}]}
