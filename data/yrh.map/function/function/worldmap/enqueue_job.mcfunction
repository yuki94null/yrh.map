execute if data storage yrh.map:_ worldmap.queue_candidate.scale run return run function yrh.map:function/worldmap/scaled/queue/enqueue
execute if data storage yrh.map:_ worldmap.preview_pass run return run function yrh.map:function/worldmap/enqueue_preview_candidate with storage yrh.map:_ worldmap.queue_candidate
execute if data storage yrh.map:_ worldmap.reload run return run function yrh.map:function/worldmap/enqueue_reload_candidate with storage yrh.map:_ worldmap.queue_candidate
execute if data storage yrh.map:_ worldmap.pan run return run function yrh.map:function/worldmap/enqueue_pan_candidate with storage yrh.map:_ worldmap.queue_candidate
data modify storage yrh.map:_ worldmap.load_queue append from storage yrh.map:_ worldmap.queue_candidate
