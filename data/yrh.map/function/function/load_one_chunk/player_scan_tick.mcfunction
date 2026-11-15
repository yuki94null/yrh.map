execute if data storage yrh.map:_ terrain.job run return run function yrh.map:function/load_one_chunk/run_active_scan
execute if data storage yrh.map:_ worldmap.active_job run return 0
execute if data storage yrh.map:_ worldmap.load_queue[0] run return 0
execute if data storage yrh.map:_ terrain.manual_queue[0] run return run function yrh.map:function/load_one_chunk/start_manual_scan
execute store result score #terrain_now yrh_map_tmp run time query gametime
execute unless entity @a[distance=0..,tag=!yrh.map.scan_turn] run tag @a[distance=0..] remove yrh.map.scan_turn
execute as @a[distance=0..,tag=!yrh.map.scan_turn,limit=1] at @s run function yrh.map:function/load_one_chunk/select_scan_candidate
