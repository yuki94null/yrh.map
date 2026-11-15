execute unless data storage yrh.map:_ worldmap.active_job.mode run data modify storage yrh.map:_ worldmap.active_job.mode set value "average"
execute if data storage yrh.map:_ worldmap.active_job{mode:"average",scale:8} run return run function yrh.map:function/worldmap/scaled/render/average/large_average
execute if data storage yrh.map:_ worldmap.active_job{mode:"average",scale:16} run return run function yrh.map:function/worldmap/scaled/render/average/large_average
scoreboard players set #scale_budget yrh_map_tmp 8
execute if data storage yrh.map:_ worldmap.active_job{mode:"representative"} run scoreboard players set #scale_budget yrh_map_tmp 32
function yrh.map:function/worldmap/scaled/render/pixel_loop
