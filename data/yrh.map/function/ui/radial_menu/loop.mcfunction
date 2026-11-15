$data modify storage yrh.map:ui tmp.option set from storage yrh.map:ui config.radial_menu.map.contents[$(index)]
function yrh.map:ui/radial_menu/compare
scoreboard players remove #radial_remaining yrh_map_tmp 1
execute unless score #radial_remaining yrh_map_tmp matches 1.. run return 0
execute store result score #radial_index yrh_map_tmp run data get storage yrh.map:ui tmp.index
scoreboard players add #radial_index yrh_map_tmp 1
execute store result storage yrh.map:ui tmp.index int 1 run scoreboard players get #radial_index yrh_map_tmp
function yrh.map:ui/radial_menu/loop with storage yrh.map:ui tmp
