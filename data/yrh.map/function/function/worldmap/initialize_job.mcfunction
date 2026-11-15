execute if data storage yrh.map:_ worldmap.active_job.map_id[0] run return run data remove storage yrh.map:_ worldmap.active_job
function yrh.map:function/worldmap/validate_render_id with storage yrh.map:_ worldmap.active_job
execute unless data storage yrh.map:_ worldmap.active_job run return 0
function yrh.map:function/worldmap/probe_cached_color with storage yrh.map:_ worldmap.active_job
execute if data storage yrh.map:_ worldmap.active_job{cached_color:0b} run tellraw @a[tag=yrh.map.queue_trace] [{text:"[Map Queue] skip (color cache incomplete) "},{nbt:"worldmap.active_job",storage:"yrh.map:_",interpret:false}]
data modify storage yrh.map:_ worldmap.debug.last_color_probe set from storage yrh.map:_ worldmap.active_job
execute if data storage yrh.map:_ worldmap.active_job{cached_color:0b} run data remove storage yrh.map:_ worldmap.active_job
