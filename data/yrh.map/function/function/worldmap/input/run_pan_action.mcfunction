$execute store result score #pan_result yrh_map_tmp run function yrh.map:function/worldmap/input/try_pan_control {action:"$(action)",map_id:$(map_id)}
execute unless score #pan_result yrh_map_tmp matches 1 run return run function yrh.map:function/worldmap/input/cannot_operate_click with storage yrh.map:_ worldmap.click
