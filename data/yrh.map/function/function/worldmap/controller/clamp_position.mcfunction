# Compare positions in 1/64-block units. This fits the scoreboard at the world border.
execute store result score #controller_half yrh_map_tmp run data get storage yrh.map:_ worldmap.controller_move.span
scoreboard players add #controller_half yrh_map_tmp 1
scoreboard players set #controller_half_block yrh_map_tmp 32
scoreboard players operation #controller_half yrh_map_tmp *= #controller_half_block yrh_map_tmp
execute store result score #controller_min_x yrh_map_tmp run data get storage yrh.map:_ worldmap.controller_move.anchor_pos[0] 64
execute store result score #controller_min_z yrh_map_tmp run data get storage yrh.map:_ worldmap.controller_move.anchor_pos[2] 64
# The board is centered half a block north of the anchor.
scoreboard players remove #controller_min_z yrh_map_tmp 32
scoreboard players operation #controller_max_x yrh_map_tmp = #controller_min_x yrh_map_tmp
scoreboard players operation #controller_max_z yrh_map_tmp = #controller_min_z yrh_map_tmp
scoreboard players operation #controller_min_x yrh_map_tmp -= #controller_half yrh_map_tmp
scoreboard players operation #controller_min_z yrh_map_tmp -= #controller_half yrh_map_tmp
scoreboard players operation #controller_max_x yrh_map_tmp += #controller_half yrh_map_tmp
scoreboard players operation #controller_max_z yrh_map_tmp += #controller_half yrh_map_tmp
# From the center button the outer button centers are 0.78 blocks east/west and 0.58 blocks north.
# Allow for the 0.72 by 0.52 block backgrounds and a rounding margin.
scoreboard players add #controller_min_x yrh_map_tmp 76
scoreboard players remove #controller_max_x yrh_map_tmp 76
scoreboard players add #controller_min_z yrh_map_tmp 57
scoreboard players remove #controller_max_z yrh_map_tmp 18
data modify storage yrh.map:_ worldmap.controller_move.x set from entity @s Pos[0]
data modify storage yrh.map:_ worldmap.controller_move.z set from entity @s Pos[2]
execute store result score #controller_player_x yrh_map_tmp run data get entity @s Pos[0] 64
execute store result score #controller_player_z yrh_map_tmp run data get entity @s Pos[2] 64
execute if score #controller_player_x yrh_map_tmp < #controller_min_x yrh_map_tmp store result storage yrh.map:_ worldmap.controller_move.x double 0.015625 run scoreboard players get #controller_min_x yrh_map_tmp
execute if score #controller_player_x yrh_map_tmp > #controller_max_x yrh_map_tmp store result storage yrh.map:_ worldmap.controller_move.x double 0.015625 run scoreboard players get #controller_max_x yrh_map_tmp
execute if score #controller_player_z yrh_map_tmp < #controller_min_z yrh_map_tmp store result storage yrh.map:_ worldmap.controller_move.z double 0.015625 run scoreboard players get #controller_min_z yrh_map_tmp
execute if score #controller_player_z yrh_map_tmp > #controller_max_z yrh_map_tmp store result storage yrh.map:_ worldmap.controller_move.z double 0.015625 run scoreboard players get #controller_max_z yrh_map_tmp
return run function yrh.map:function/worldmap/controller/project_at with storage yrh.map:_ worldmap.controller_move
