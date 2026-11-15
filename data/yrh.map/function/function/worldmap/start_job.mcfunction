data modify storage yrh.map:_ worldmap.active_job set from storage yrh.map:_ worldmap.load_queue[0]
data remove storage yrh.map:_ worldmap.load_queue[0]
execute unless data storage yrh.map:_ worldmap.active_job.quality run data modify storage yrh.map:_ worldmap.active_job.quality set value "full"
data modify storage yrh.map:_ worldmap.active_job.phase set value "render"
execute if data storage yrh.map:_ worldmap.active_job.scale run return run function yrh.map:function/worldmap/scaled/queue/start
function yrh.map:function/worldmap/initialize_job
