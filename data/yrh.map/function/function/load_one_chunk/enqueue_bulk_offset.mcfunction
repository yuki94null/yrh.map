data modify storage yrh.map:_ terrain.manual_request set value {column:0}
$data modify storage yrh.map:_ terrain.manual_request.x set compute default integer {type:"minecraft:add",inputs:[{type:"minecraft:storage",storage:"yrh.map:_",path:"terrain.bulk_origin.x",fallback:0},$(dx)]}
$data modify storage yrh.map:_ terrain.manual_request.z set compute default integer {type:"minecraft:add",inputs:[{type:"minecraft:storage",storage:"yrh.map:_",path:"terrain.bulk_origin.z",fallback:0},$(dz)]}
function yrh.map:function/load_one_chunk/append_manual_candidate with storage yrh.map:_ terrain.manual_request
