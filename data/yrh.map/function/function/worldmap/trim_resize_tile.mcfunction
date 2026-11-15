execute if score @s yrh_map_tx > #resize_radius yrh_map_tmp run return run kill @s
execute if score @s yrh_map_tx < #resize_min yrh_map_tmp run return run kill @s
execute if score @s yrh_map_tz > #resize_radius yrh_map_tmp run return run kill @s
execute if score @s yrh_map_tz < #resize_min yrh_map_tmp run return run kill @s
