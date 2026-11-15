tag @e[type=minecraft:text_display,tag=yrh.map.worldmap_render_target] remove yrh.map.worldmap_render_target
data modify storage yrh.map:_ render set value {position:{}}
data modify storage yrh.map:_ worldmap.text set value {text:"",extra:[]}
function yrh.map:function/worldmap/after_load
data modify storage yrh.map:_ worldmap.revision_origin set from storage yrh.map:_ worldmap.active_job
function yrh.map:function/worldmap/get_render_revision
data modify storage yrh.map:_ worldmap.active_job.render_revision set from storage yrh.map:_ worldmap.revision
execute if entity @e[type=minecraft:text_display,tag=yrh.map.worldmap_render_target] run data modify storage yrh.map:_ worldmap.active_job.phase set value "render_rows"
execute if entity @e[type=minecraft:text_display,tag=yrh.map.worldmap_render_target] run data modify storage yrh.map:_ worldmap.active_job.row set value 0
execute unless entity @e[type=minecraft:text_display,tag=yrh.map.worldmap_render_target] run data remove storage yrh.map:_ worldmap.active_job
