data modify storage yrh.map:_ worldmap.debug.last_cache_attempt set from storage yrh.map:_ worldmap.active_job
data modify storage yrh.map:_ worldmap.debug.cache_write set value {entered:0b,cells:0,written:0b}
execute store result storage yrh.map:_ worldmap.debug.cache_write.cells int 1 run data get storage yrh.map:_ worldmap.text.extra
function yrh.map:function/worldmap/save_text_cache with storage yrh.map:_ worldmap.active_job
data modify storage yrh.map:_ worldmap.active_job.phase set value "render_apply"
