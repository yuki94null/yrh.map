data modify storage yrh.map:_ worldmap.debug.cache_write.entered set value 1b
$execute store success storage yrh.map:_ worldmap.debug.cache_write.written byte 1 run data modify storage yrh.map:worldmap_text chunks.c_$(x)_$(z).$(quality).scale_1 set from storage yrh.map:_ worldmap.text
$execute if data storage yrh.map:worldmap_text chunks.c_$(x)_$(z).$(quality).scale_1 run data modify storage yrh.map:_ worldmap.debug.last_text_cache set value {x:$(x),z:$(z)}
$data remove storage yrh.map:worldmap_text chunks.c_$(x)_$(z).$(quality).revision
$data modify storage yrh.map:worldmap_text chunks.c_$(x)_$(z).$(quality).layout set value 3
