$execute unless data storage yrh.map:worldmap_text chunks.c_$(x)_$(z){layout:3} run return 0
$execute unless data storage yrh.map:worldmap_text chunks.c_$(x)_$(z).scale_1 run return 0
$execute if data storage yrh.map:worldmap_text chunks.c_$(x)_$(z).revision{own:$(own),north:$(north),west:$(west)} run return 1
return 0
