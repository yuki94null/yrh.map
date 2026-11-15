data modify storage yrh.map:_ terrain.candidate set from storage yrh.map:_ terrain.manual_queue[0]
data modify storage yrh.map:_ terrain.candidate.manual set value 1b
data remove storage yrh.map:_ terrain.manual_queue[0]
scoreboard players set #terrain_interval yrh_map_tmp 0
function yrh.map:function/load_one_chunk/player_scan_start with storage yrh.map:_ terrain.candidate
