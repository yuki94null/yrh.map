$data modify storage yrh.map:_ worldmap.debug.last_load set value {x:$(x),z:$(z),loaded:0b}
$execute if loaded $(x) 0 $(z) run data modify storage yrh.map:_ worldmap.debug.last_load.loaded set value 1b
$execute if loaded $(x) 0 $(z) positioned $(x) 0 $(z) run function yrh.map:function/load_one_chunk/scan_chunk
