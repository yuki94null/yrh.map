$execute if data storage yrh.map:worldmap_text scaled.s$(scale)_$(mode)_$(sx)_$(sz){revision:$(revision)} run return run function yrh.map:function/worldmap/scaled/cache/show_final_cache
$execute if data storage yrh.map:worldmap_text scaled.s$(scale)_$(mode)_$(sx)_$(sz).text run return run function yrh.map:function/worldmap/scaled/cache/show_requested_cache with storage yrh.map:_ worldmap.scaled_tile_cache
$execute if data storage yrh.map:_ worldmap.scaled_tile_cache{mode:"average"} if data storage yrh.map:worldmap_text scaled.s$(scale)_representative_$(sx)_$(sz).text run return run function yrh.map:function/worldmap/scaled/cache/show_preview_cache with storage yrh.map:_ worldmap.scaled_tile_cache
function yrh.map:function/worldmap/blank_pan_tile
