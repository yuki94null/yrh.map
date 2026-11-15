$execute unless data storage yrh.map:worldmap_text chunks.c_$(x)_$(z).$(quality).scale_1 if data storage yrh.map:_ worldmap.revision{quality:"full"} run return run function yrh.map:function/worldmap/compare_render_revision_legacy with storage yrh.map:_ worldmap.revision
$execute unless data storage yrh.map:worldmap_text chunks.c_$(x)_$(z).$(quality){layout:3} run return 0
$execute unless data storage yrh.map:worldmap_text chunks.c_$(x)_$(z).$(quality).scale_1 run return 0
$execute if data storage yrh.map:worldmap_text chunks.c_$(x)_$(z).$(quality).revision{own:$(own),north:$(north),west:$(west)} run return 1
return 0
