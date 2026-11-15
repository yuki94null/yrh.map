execute unless score @s yrh_rad_cursor matches 0..120 run return 0
execute store result storage yrh.map:ui effect.index int 1 run scoreboard players get @s yrh_rad_cursor
function yrh.map:ui/radial_menu/remove_cursor_effect with storage yrh.map:ui effect
scoreboard players reset @s yrh_rad_cursor
