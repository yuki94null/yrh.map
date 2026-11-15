execute unless data storage yrh.map:_ worldmap.active_job run return 0
execute if data storage yrh.map:_ worldmap.active_job{pixel:256} run return run function yrh.map:function/worldmap/scaled/cache/save with storage yrh.map:_ worldmap.active_job
execute if score #scale_budget yrh_map_tmp matches ..0 run return 0
function yrh.map:function/worldmap/scaled/render/pixel
scoreboard players remove #scale_budget yrh_map_tmp 1
function yrh.map:function/worldmap/scaled/render/pixel_loop
