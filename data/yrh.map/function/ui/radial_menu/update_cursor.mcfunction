execute unless score #radial_depth yrh_map_tmp matches 342.. run return run function yrh.map:ui/radial_menu/hide_cursor
function yrh.map:ui/radial_menu/quantize_cursor
# If the ring was re-added farther down the list, move the cursor after it.
execute if score @s yrh_rad_cursor = #radial_cursor_next yrh_map_tmp if score #radial_ring_changed yrh_map_tmp matches 0 run return 0
function yrh.map:ui/radial_menu/hide_cursor
scoreboard players operation @s yrh_rad_cursor = #radial_cursor_next yrh_map_tmp
execute store result storage yrh.map:ui effect.index int 1 run scoreboard players get @s yrh_rad_cursor
function yrh.map:ui/radial_menu/add_cursor_effect with storage yrh.map:ui effect
