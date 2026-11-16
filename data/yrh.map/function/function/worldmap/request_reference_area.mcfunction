execute unless data storage yrh.map:_ worldmap.load_queue run data modify storage yrh.map:_ worldmap.load_queue set value []
data modify storage yrh.map:_ worldmap.queue_candidate set value {quality:"full"}
execute store result storage yrh.map:_ worldmap.queue_candidate.map_id int 1 run scoreboard players get @s yrh_map_id
execute if data entity @s data.yrhmap.Quality run data modify storage yrh.map:_ worldmap.queue_candidate.quality set from entity @s data.yrhmap.Quality
data modify storage yrh.map:_ worldmap.args set value {x:0,z:0}
execute store result storage yrh.map:_ worldmap.args.x int 1 run scoreboard players get @s yrh_map_ax
execute store result storage yrh.map:_ worldmap.args.z int 1 run scoreboard players get @s yrh_map_az
execute if entity @s[tag=yrh.map.scale_2] run data modify storage yrh.map:_ worldmap.queue_candidate.scale set value 2
execute if entity @s[tag=yrh.map.scale_4] run data modify storage yrh.map:_ worldmap.queue_candidate.scale set value 4
execute if entity @s[tag=yrh.map.scale_8] run data modify storage yrh.map:_ worldmap.queue_candidate.scale set value 8
execute if entity @s[tag=yrh.map.scale_16] run data modify storage yrh.map:_ worldmap.queue_candidate.scale set value 16
execute if data storage yrh.map:_ worldmap.queue_candidate.scale run data modify storage yrh.map:_ worldmap.queue_candidate.mode set value "average"
execute if data storage yrh.map:_ worldmap.queue_candidate.scale if entity @s[tag=yrh.map.scale_representative] run data modify storage yrh.map:_ worldmap.queue_candidate.mode set value "representative"
execute if data storage yrh.map:_ worldmap.resizing if data storage yrh.map:_ worldmap.queue_candidate.scale run data modify storage yrh.map:_ worldmap.pan set value 1b
execute if data storage yrh.map:_ worldmap.queue_candidate.scale run return run function yrh.map:function/worldmap/scaled/queue/request
execute if data storage yrh.map:_ worldmap.queue_candidate{quality:"full"} run function yrh.map:function/worldmap/enqueue_preview_area
function yrh.map:function/worldmap/enqueue_reference_area with storage yrh.map:_ worldmap.args
data remove storage yrh.map:_ worldmap.pan
data remove storage yrh.map:_ worldmap.queue_candidate
