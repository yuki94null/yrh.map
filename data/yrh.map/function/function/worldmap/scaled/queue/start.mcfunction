function yrh.map:function/worldmap/validate_render_id with storage yrh.map:_ worldmap.active_job
execute unless data storage yrh.map:_ worldmap.active_job run return 0
execute unless data storage yrh.map:_ worldmap.active_job.mode run data modify storage yrh.map:_ worldmap.active_job.mode set value "average"
function yrh.map:function/worldmap/after_load
execute unless entity @e[type=minecraft:text_display,tag=yrh.map.worldmap_render_target] run return run data remove storage yrh.map:_ worldmap.active_job
tag @e[type=minecraft:text_display,tag=yrh.map.worldmap_render_target] add yrh.map.scaled_pending
data modify storage yrh.map:_ worldmap.active_job.pixel set value 0
data modify storage yrh.map:_ worldmap.active_job.group set value 0
execute store result storage yrh.map:_ worldmap.active_job.revision int 1 run scoreboard players get #terrain_revision yrh_map_tmp
data modify storage yrh.map:_ worldmap.active_job.phase set value "scale4"
data modify storage yrh.map:_ worldmap.text set value {text:"",extra:[]}
function yrh.map:function/worldmap/scaled/cache/read_cache with storage yrh.map:_ worldmap.active_job
execute unless data storage yrh.map:_ worldmap.active_job run return 0
execute store result score #scale_has_terrain yrh_map_tmp run function yrh.map:function/worldmap/scaled/terrain/probe
execute if score #scale_has_terrain yrh_map_tmp matches 0 run return run function yrh.map:function/worldmap/scaled/render/apply_blank
execute if data storage yrh.map:_ worldmap.active_job{mode:"average"} unless data storage yrh.map:_ worldmap.active_job.refine run function yrh.map:function/worldmap/scaled/queue/start_preview with storage yrh.map:_ worldmap.active_job
