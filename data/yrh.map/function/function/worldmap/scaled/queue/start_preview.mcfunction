$execute if data storage yrh.map:worldmap_text scaled.s$(scale)_average_$(sx)_$(sz).text run return 0
data modify storage yrh.map:_ worldmap.active_job.preview set value 1b
data modify storage yrh.map:_ worldmap.active_job.mode set value "representative"
function yrh.map:function/worldmap/scaled/cache/read_cache with storage yrh.map:_ worldmap.active_job
