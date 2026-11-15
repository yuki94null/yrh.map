execute store result score #waypoint_draw_x yrh_map_tmp run data get storage yrh.map:_ worldmap.waypoint_draw.pin.x
scoreboard players operation #waypoint_draw_x yrh_map_tmp -= @s yrh_map_ax
execute if score #waypoint_draw_x yrh_map_tmp < #waypoint_draw_min yrh_map_tmp run return 0
execute if score #waypoint_draw_x yrh_map_tmp > #waypoint_draw_max yrh_map_tmp run return 0
execute store result storage yrh.map:_ worldmap.waypoint_draw.delta_x int 1 run scoreboard players get #waypoint_draw_x yrh_map_tmp
execute store result score #waypoint_draw_z yrh_map_tmp run data get storage yrh.map:_ worldmap.waypoint_draw.pin.z
scoreboard players operation #waypoint_draw_z yrh_map_tmp -= @s yrh_map_az
execute if score #waypoint_draw_z yrh_map_tmp < #waypoint_draw_min yrh_map_tmp run return 0
execute if score #waypoint_draw_z yrh_map_tmp > #waypoint_draw_max yrh_map_tmp run return 0
execute store result storage yrh.map:_ worldmap.waypoint_draw.delta_z int 1 run scoreboard players get #waypoint_draw_z yrh_map_tmp
data modify storage yrh.map:_ worldmap.waypoint_draw.dx set compute default float {"type":"minecraft:div","left":{"type":"minecraft:from_int","input":{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.waypoint_draw.delta_x","fallback":1}},"right":{"type":"minecraft:from_int","input":{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.waypoint_draw.scale","fallback":1}}}
data modify storage yrh.map:_ worldmap.waypoint_draw.dz set compute default float {"type":"minecraft:div","left":{"type":"minecraft:from_int","input":{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.waypoint_draw.delta_z","fallback":1}},"right":{"type":"minecraft:from_int","input":{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.waypoint_draw.scale","fallback":1}}}
function yrh.map:function/worldmap/waypoint/markers/render_at with storage yrh.map:_ worldmap.waypoint_draw
