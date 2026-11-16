scoreboard players set #radial_ring_changed yrh_map_tmp 0
scoreboard players set #radial_effect_next yrh_map_tmp 0
execute if data storage yrh.map:ui tmp.selected_index run execute store result score #radial_effect_next yrh_map_tmp run data get storage yrh.map:ui tmp.selected_index
execute if data storage yrh.map:ui tmp.selected_index run scoreboard players add #radial_effect_next yrh_map_tmp 1
# Each combination of lamps has seven effects, one for each selection state.
execute if data storage yrh.map:ui session{fixed:1b} run scoreboard players add #radial_effect_next yrh_map_tmp 7
execute if data storage yrh.map:ui session{public:1b} run scoreboard players add #radial_effect_next yrh_map_tmp 14
execute if data storage yrh.map:ui session{shared_pins_visible:1b} run scoreboard players add #radial_effect_next yrh_map_tmp 28
execute if score @s yrh_rad_effect = #radial_effect_next yrh_map_tmp run return 0
scoreboard players set #radial_ring_changed yrh_map_tmp 1
function yrh.map:ui/radial_menu/hide_effect
scoreboard players operation @s yrh_rad_effect = #radial_effect_next yrh_map_tmp
execute store result storage yrh.map:ui effect.index int 1 run scoreboard players get @s yrh_rad_effect
function yrh.map:ui/radial_menu/add_effect with storage yrh.map:ui effect
