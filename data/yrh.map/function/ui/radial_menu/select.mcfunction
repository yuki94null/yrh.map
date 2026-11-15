data modify storage yrh.map:ui tmp set value {index:0,direction:"・"}
execute store result storage yrh.map:ui tmp.base_yaw float 0.001 run scoreboard players get @s yrh_rad_yaw
execute store result storage yrh.map:ui tmp.base_pitch float 0.001 run scoreboard players get @s yrh_rad_pitch
data modify storage yrh.map:ui tmp.yaw set from entity @s Rotation[0]
data modify storage yrh.map:ui tmp.pitch set from entity @s Rotation[1]
# Project the current look ray onto the plane of the opening view.
data modify storage yrh.map:ui tmp.delta_yaw set compute default float {"type":"minecraft:mul","inputs":[{"type":"minecraft:sub","left":{"type":"minecraft:storage","storage":"yrh.map:ui","path":"tmp.yaw","fallback":0},"right":{"type":"minecraft:storage","storage":"yrh.map:ui","path":"tmp.base_yaw","fallback":0}},0.017453292519943295]}
data modify storage yrh.map:ui tmp.pitch_cos set compute default float {"type":"minecraft:cos","input":{"type":"minecraft:mul","inputs":[{"type":"minecraft:storage","storage":"yrh.map:ui","path":"tmp.pitch","fallback":0},0.017453292519943295]}}
data modify storage yrh.map:ui tmp.pitch_sin set compute default float {"type":"minecraft:sin","input":{"type":"minecraft:mul","inputs":[{"type":"minecraft:storage","storage":"yrh.map:ui","path":"tmp.pitch","fallback":0},0.017453292519943295]}}
data modify storage yrh.map:ui tmp.base_cos set compute default float {"type":"minecraft:cos","input":{"type":"minecraft:mul","inputs":[{"type":"minecraft:storage","storage":"yrh.map:ui","path":"tmp.base_pitch","fallback":0},0.017453292519943295]}}
data modify storage yrh.map:ui tmp.base_sin set compute default float {"type":"minecraft:sin","input":{"type":"minecraft:mul","inputs":[{"type":"minecraft:storage","storage":"yrh.map:ui","path":"tmp.base_pitch","fallback":0},0.017453292519943295]}}
data modify storage yrh.map:ui tmp.local_forward set compute default float {"type":"minecraft:mul","inputs":[{"type":"minecraft:storage","storage":"yrh.map:ui","path":"tmp.pitch_cos","fallback":0},{"type":"minecraft:cos","input":{"type":"minecraft:storage","storage":"yrh.map:ui","path":"tmp.delta_yaw","fallback":0}}]}
data modify storage yrh.map:ui tmp.depth set compute default float {"type":"minecraft:add","inputs":[{"type":"minecraft:mul","inputs":[{"type":"minecraft:storage","storage":"yrh.map:ui","path":"tmp.base_cos","fallback":0},{"type":"minecraft:storage","storage":"yrh.map:ui","path":"tmp.local_forward","fallback":0}]},{"type":"minecraft:mul","inputs":[{"type":"minecraft:storage","storage":"yrh.map:ui","path":"tmp.base_sin","fallback":0},{"type":"minecraft:storage","storage":"yrh.map:ui","path":"tmp.pitch_sin","fallback":0}]}]}
execute store result score #radial_depth yrh_map_tmp run data get storage yrh.map:ui tmp.depth 1000
# Keep tracking the sonar circle up to about 70 degrees.
execute unless score #radial_depth yrh_map_tmp matches 342.. run return 0
function yrh.map:ui/radial_menu/project
# Read direction even inside the cancellation zone so the UI can show it.
scoreboard players operation #radial_radius_sq yrh_map_tmp = #radial_cursor_x yrh_map_tmp
scoreboard players operation #radial_radius_sq yrh_map_tmp *= #radial_cursor_x yrh_map_tmp
scoreboard players operation #radial_y_sq yrh_map_tmp = #radial_cursor_y yrh_map_tmp
scoreboard players operation #radial_y_sq yrh_map_tmp *= #radial_cursor_y yrh_map_tmp
scoreboard players operation #radial_radius_sq yrh_map_tmp += #radial_y_sq yrh_map_tmp
execute unless score #radial_radius_sq yrh_map_tmp matches 100.. run return 0
scoreboard players set #radial_best yrh_map_tmp -2147483648
execute store result score #radial_remaining yrh_map_tmp run data get storage yrh.map:ui config.radial_menu.map.contents
execute if score #radial_remaining yrh_map_tmp matches 1.. run function yrh.map:ui/radial_menu/loop with storage yrh.map:ui tmp
execute if data storage yrh.map:ui tmp.selected.direction run data modify storage yrh.map:ui tmp.direction set from storage yrh.map:ui tmp.selected.direction
execute if score #radial_radius_sq yrh_map_tmp matches ..60299 run data remove storage yrh.map:ui tmp.selected
execute if score #radial_radius_sq yrh_map_tmp matches ..60299 run data remove storage yrh.map:ui tmp.selected_index
# The circle keeps growing beyond 30 degrees, but the menu selection cancels.
execute if score #radial_depth yrh_map_tmp matches ..865 run data remove storage yrh.map:ui tmp.selected
execute if score #radial_depth yrh_map_tmp matches ..865 run data remove storage yrh.map:ui tmp.selected_index
