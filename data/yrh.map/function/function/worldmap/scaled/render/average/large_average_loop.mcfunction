execute if data storage yrh.map:_ worldmap.active_job{pixel:256} run return run function yrh.map:function/worldmap/scaled/cache/save with storage yrh.map:_ worldmap.active_job
execute if score #scale_budget yrh_map_tmp matches ..0 run return 0
execute if score #scale_group_steps yrh_map_tmp matches ..0 run return 0
execute if data storage yrh.map:_ worldmap.active_job{group:0} run function yrh.map:function/worldmap/scaled/render/average/reset_pixel_sum
function yrh.map:function/worldmap/scaled/render/average/read_large_group
scoreboard players remove #scale_group_steps yrh_map_tmp 1
execute if score #scale_group_loaded yrh_map_tmp matches 1 run scoreboard players remove #scale_budget yrh_map_tmp 1
function yrh.map:function/worldmap/scaled/render/average/large_average_loop
