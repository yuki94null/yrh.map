$execute unless loaded $(x) 0 $(z) run return run data remove storage yrh.map:_ terrain.job
execute unless data storage yrh.map:_ terrain.job.half run data modify storage yrh.map:_ terrain.job.half set value 0
execute if data storage yrh.map:_ terrain.job{phase:"scan"} run return run function yrh.map:function/load_one_chunk/player_scan_column
execute if data storage yrh.map:_ terrain.job{phase:"bake"} run return run function yrh.map:function/load_one_chunk/player_bake_column
function yrh.map:function/load_one_chunk/player_scan_finish
