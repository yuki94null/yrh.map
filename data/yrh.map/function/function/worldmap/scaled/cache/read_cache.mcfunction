$execute if data storage yrh.map:worldmap_text scaled.s$(scale)_$(mode)_$(sx)_$(sz){revision:$(revision)} run data modify storage yrh.map:_ worldmap.text set from storage yrh.map:worldmap_text scaled.s$(scale)_$(mode)_$(sx)_$(sz).text
execute if data storage yrh.map:_ worldmap.text.extra[0] run function yrh.map:function/worldmap/scaled/render/apply
