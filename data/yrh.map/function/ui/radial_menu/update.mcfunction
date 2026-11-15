scoreboard players operation #radial_gap yrh_map_tmp = #radial_now yrh_map_tmp
scoreboard players operation #radial_gap yrh_map_tmp -= @s yrh_rad_seen
execute unless score #radial_gap yrh_map_tmp matches 0..2 run return run function yrh.map:ui/radial_menu/cancel
execute unless dimension minecraft:overworld run return run function yrh.map:ui/radial_menu/cancel
execute unless items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_data~{yrhmap:{placer:1b}}] run return run function yrh.map:ui/radial_menu/cancel
execute store result score #radial_on_board yrh_map_tmp run function yrh.map:ui/radial_menu/check_session_board with entity @s
execute unless score #radial_on_board yrh_map_tmp matches 1 run return run function yrh.map:ui/radial_menu/cancel
execute unless predicate yrh.map:is_sprint_input run return run function yrh.map:ui/radial_menu/end
scoreboard players operation @s yrh_rad_seen = #radial_now yrh_map_tmp
function yrh.map:ui/radial_menu/while
