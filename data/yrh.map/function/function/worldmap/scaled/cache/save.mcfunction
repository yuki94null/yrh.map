execute unless data storage yrh.map:worldmap_text scaled run data modify storage yrh.map:worldmap_text scaled set value {}
$data modify storage yrh.map:worldmap_text scaled.s$(scale)_$(mode)_$(sx)_$(sz) set value {revision:$(revision)}
$data modify storage yrh.map:worldmap_text scaled.s$(scale)_$(mode)_$(sx)_$(sz).text set from storage yrh.map:_ worldmap.text
function yrh.map:function/worldmap/scaled/render/apply
