execute unless score #map_click_access yrh_map_tmp matches 1.. run return run function yrh.map:function/worldmap/input/cannot_operate_click with storage yrh.map:_ worldmap.click
execute store result score #diagonal_x yrh_map_tmp run data get entity @s data.yrhmap.Diagonal.x
execute store result score #diagonal_z yrh_map_tmp run data get entity @s data.yrhmap.Diagonal.z
execute if data storage yrh.map:_ worldmap.button_event{side:"left"} store result score #diagonal_x yrh_map_tmp run data get entity @s data.yrhmap.Diagonal.x -1
execute if data storage yrh.map:_ worldmap.button_event{side:"left"} store result score #diagonal_z yrh_map_tmp run data get entity @s data.yrhmap.Diagonal.z -1
function yrh.map:function/worldmap/controller/pan_diagonal with storage yrh.map:_ worldmap.click
