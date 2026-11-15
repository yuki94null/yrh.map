$execute if data storage yrh.map:_ terrain.manual_queue[{x:$(x),z:$(z)}] run return 0
$execute if data storage yrh.map:_ terrain.job{x:$(x),z:$(z)} run return 0
data modify storage yrh.map:_ terrain.manual_queue append from storage yrh.map:_ terrain.manual_request
scoreboard players add #bulk_queued yrh_map_tmp 1
