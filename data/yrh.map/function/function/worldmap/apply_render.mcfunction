execute as @e[type=minecraft:text_display,tag=yrh.map.worldmap_render_target] unless data entity @s {line_width:512} run data modify entity @s line_width set value 512
execute as @e[type=minecraft:text_display,tag=yrh.map.worldmap_render_target] run data modify entity @s text set from storage yrh.map:_ worldmap.text
function yrh.map:function/worldmap/commit_render_revision with storage yrh.map:_ worldmap.active_job
tag @e[type=minecraft:text_display,tag=yrh.map.worldmap_render_target] remove yrh.map.worldmap_render_target
data remove storage yrh.map:_ worldmap.active_job
