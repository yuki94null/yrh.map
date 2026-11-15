execute unless score @s yrh_rad_effect matches 0..13 run return 0
execute store result storage yrh.map:ui effect.index int 1 run scoreboard players get @s yrh_rad_effect
function yrh.map:ui/radial_menu/remove_effect with storage yrh.map:ui effect
scoreboard players reset @s yrh_rad_effect
