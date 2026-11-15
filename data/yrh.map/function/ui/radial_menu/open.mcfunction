execute store result score #radial_on_board yrh_map_tmp run function yrh.map:ui/radial_menu/check_board with storage yrh.map:ui session
execute unless score #radial_on_board yrh_map_tmp matches 1 run return 0
$data modify storage yrh.map:ui player_data."$(player)".radial_menu set from storage yrh.map:ui session.anchor
execute store result score @s yrh_rad_yaw run data get entity @s Rotation[0] 1000
execute store result score @s yrh_rad_pitch run data get entity @s Rotation[1] 1000
scoreboard players operation @s yrh_rad_seen = #radial_now yrh_map_tmp
tag @s add yrh.map.player.ui.radial_menu.input
function yrh.map:ui/radial_menu/while
