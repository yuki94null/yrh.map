execute if entity @a[tag=yrh.map.queue_trace] run execute store result score #queue_trace_tick yrh_map_tmp run time query gametime
execute unless data storage yrh.map:_ worldmap.active_job if data storage yrh.map:_ worldmap.load_queue[0] run function yrh.map:function/worldmap/start_job
execute if data storage yrh.map:_ worldmap.active_job run function yrh.map:function/worldmap/process_active
