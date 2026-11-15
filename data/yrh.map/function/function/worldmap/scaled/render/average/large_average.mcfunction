scoreboard players set #scale_budget yrh_map_tmp 8
scoreboard players set #scale_group_steps yrh_map_tmp 32
data modify storage yrh.map:_ worldmap.scale_group_width set value 2
execute if data storage yrh.map:_ worldmap.active_job{scale:16} run data modify storage yrh.map:_ worldmap.scale_group_width set value 4
function yrh.map:function/worldmap/scaled/render/average/large_average_loop
