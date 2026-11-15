execute as @e[type=minecraft:text_display,tag=yrh.map.worldmap_render_target] run data modify entity @s line_width set value 512
execute as @e[type=minecraft:text_display,tag=yrh.map.worldmap_render_target] run data modify entity @s text set from storage yrh.map:_ worldmap.text
execute if data storage yrh.map:_ worldmap.active_job{preview:1b} run function yrh.map:function/worldmap/scaled/queue/enqueue_refinement
execute unless data storage yrh.map:_ worldmap.active_job.preview run tag @e[type=minecraft:text_display,tag=yrh.map.worldmap_render_target] remove yrh.map.scaled_pending
tag @e[type=minecraft:text_display,tag=yrh.map.worldmap_render_target] remove yrh.map.worldmap_render_target
data remove storage yrh.map:_ worldmap.active_job
