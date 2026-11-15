data modify storage yrh.map:_ worldmap.preview_pass set value 1b
data modify storage yrh.map:_ worldmap.queue_candidate.quality set value "flat"
function yrh.map:function/worldmap/enqueue_reference_area with storage yrh.map:_ worldmap.args
data modify storage yrh.map:_ worldmap.queue_candidate.quality set value "full"
data remove storage yrh.map:_ worldmap.preview_pass
