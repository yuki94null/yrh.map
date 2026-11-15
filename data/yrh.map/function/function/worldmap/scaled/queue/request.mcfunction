execute if data storage yrh.map:_ worldmap.pan run function yrh.map:function/worldmap/scaled/queue/enqueue_pan with storage yrh.map:_ worldmap.queue_candidate
execute unless data storage yrh.map:_ worldmap.pan run function yrh.map:function/worldmap/enqueue_reference_area with storage yrh.map:_ worldmap.args
data remove storage yrh.map:_ worldmap.pan
data remove storage yrh.map:_ worldmap.queue_candidate
