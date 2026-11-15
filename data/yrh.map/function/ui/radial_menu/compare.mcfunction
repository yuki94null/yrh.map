# A larger dot product means the cursor points closer to this sector's center.
execute store result score #radial_dot yrh_map_tmp run data get storage yrh.map:ui tmp.option.x
scoreboard players operation #radial_dot yrh_map_tmp *= #radial_cursor_x yrh_map_tmp
execute store result score #radial_dot_y yrh_map_tmp run data get storage yrh.map:ui tmp.option.y
scoreboard players operation #radial_dot_y yrh_map_tmp *= #radial_cursor_y yrh_map_tmp
scoreboard players operation #radial_dot yrh_map_tmp += #radial_dot_y yrh_map_tmp
execute unless score #radial_dot yrh_map_tmp > #radial_best yrh_map_tmp run return 0
scoreboard players operation #radial_best yrh_map_tmp = #radial_dot yrh_map_tmp
data modify storage yrh.map:ui tmp.selected set from storage yrh.map:ui tmp.option
data modify storage yrh.map:ui tmp.selected_index set from storage yrh.map:ui tmp.index
