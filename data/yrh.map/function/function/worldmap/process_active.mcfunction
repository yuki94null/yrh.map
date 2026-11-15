execute if data storage yrh.map:_ worldmap.active_job.scale run return run function yrh.map:function/worldmap/scaled/queue/process
data modify storage yrh.map:_ worldmap.stage_snapshot set from storage yrh.map:_ worldmap.active_job
execute if entity @a[tag=yrh.map.queue_trace] run function yrh.map:function/worldmap/trace_active
execute if data storage yrh.map:_ worldmap.stage_snapshot{phase:"render"} run function yrh.map:function/worldmap/finish_job
execute if data storage yrh.map:_ worldmap.stage_snapshot{phase:"render_rows"} run function yrh.map:function/worldmap/render_all_rows
execute if data storage yrh.map:_ worldmap.stage_snapshot{phase:"render_finish"} run function yrh.map:function/worldmap/persist_render
execute if data storage yrh.map:_ worldmap.stage_snapshot{phase:"render_finish",quality:"flat"} if data storage yrh.map:_ worldmap.active_job{phase:"render_apply"} run function yrh.map:function/worldmap/apply_render
execute if data storage yrh.map:_ worldmap.stage_snapshot{phase:"render_apply"} run function yrh.map:function/worldmap/apply_render
