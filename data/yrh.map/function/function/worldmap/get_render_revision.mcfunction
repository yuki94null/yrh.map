data modify storage yrh.map:_ worldmap.revision_pos set from storage yrh.map:_ worldmap.revision_origin
data modify storage yrh.map:_ worldmap.revision_pos.north set compute default integer {type:"minecraft:add",inputs:[{type:"minecraft:storage",storage:"yrh.map:_",path:"worldmap.revision_origin.z",fallback:0},-16]}
data modify storage yrh.map:_ worldmap.revision_pos.west set compute default integer {type:"minecraft:add",inputs:[{type:"minecraft:storage",storage:"yrh.map:_",path:"worldmap.revision_origin.x",fallback:0},-16]}
function yrh.map:function/worldmap/read_render_revision with storage yrh.map:_ worldmap.revision_pos
