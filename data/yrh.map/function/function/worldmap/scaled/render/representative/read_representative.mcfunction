data modify storage yrh.map:_ worldmap.scale_color set value {color:"000000"}
$data modify storage yrh.map:_ worldmap.scale_color.color set from storage yrh.map:render "minecraft:over_world".scale_1.$(x).$(z).base
function yrh.map:function/worldmap/scaled/render/representative/emit_representative with storage yrh.map:_ worldmap.scale_color
