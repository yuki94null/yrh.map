data modify storage yrh.map:_ worldmap.args.x set from storage yrh.map:_ worldmap.active_job.x
data modify storage yrh.map:_ worldmap.args.z set from storage yrh.map:_ worldmap.active_job.z
execute if data storage yrh.map:_ worldmap.active_job{row:0} run function yrh.map:function/worldmap/render_row/0
execute if data storage yrh.map:_ worldmap.active_job{row:1} run function yrh.map:function/worldmap/render_row/1
execute if data storage yrh.map:_ worldmap.active_job{row:2} run function yrh.map:function/worldmap/render_row/2
execute if data storage yrh.map:_ worldmap.active_job{row:3} run function yrh.map:function/worldmap/render_row/3
execute if data storage yrh.map:_ worldmap.active_job{row:4} run function yrh.map:function/worldmap/render_row/4
execute if data storage yrh.map:_ worldmap.active_job{row:5} run function yrh.map:function/worldmap/render_row/5
execute if data storage yrh.map:_ worldmap.active_job{row:6} run function yrh.map:function/worldmap/render_row/6
execute if data storage yrh.map:_ worldmap.active_job{row:7} run function yrh.map:function/worldmap/render_row/7
execute if data storage yrh.map:_ worldmap.active_job{row:8} run function yrh.map:function/worldmap/render_row/8
execute if data storage yrh.map:_ worldmap.active_job{row:9} run function yrh.map:function/worldmap/render_row/9
execute if data storage yrh.map:_ worldmap.active_job{row:10} run function yrh.map:function/worldmap/render_row/10
execute if data storage yrh.map:_ worldmap.active_job{row:11} run function yrh.map:function/worldmap/render_row/11
execute if data storage yrh.map:_ worldmap.active_job{row:12} run function yrh.map:function/worldmap/render_row/12
execute if data storage yrh.map:_ worldmap.active_job{row:13} run function yrh.map:function/worldmap/render_row/13
execute if data storage yrh.map:_ worldmap.active_job{row:14} run function yrh.map:function/worldmap/render_row/14
execute if data storage yrh.map:_ worldmap.active_job{row:15} run function yrh.map:function/worldmap/render_row/15
data modify storage yrh.map:_ worldmap.active_job.row set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.active_job.row","fallback":0},1]}
execute if data storage yrh.map:_ worldmap.active_job{row:16} run data modify storage yrh.map:_ worldmap.active_job.phase set value "render_finish"
