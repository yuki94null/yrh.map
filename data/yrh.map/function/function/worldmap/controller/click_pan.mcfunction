execute unless score #map_click_access yrh_map_tmp matches 1.. run return run function yrh.map:function/worldmap/input/cannot_operate_click with storage yrh.map:_ worldmap.click
$execute store success score #controller_yaw_read yrh_map_tmp store result score #controller_yaw yrh_map_tmp run data get entity @a[nbt={UUID:$(player)},limit=1] Rotation[0] 1
execute unless score #controller_yaw_read yrh_map_tmp matches 1 run return 0
$scoreboard players add #controller_yaw yrh_map_tmp $(yaw_offset)
# Normalize yaw into [0, 360). Minecraft yaw 0 faces south and increases toward west.
scoreboard players set #controller_full_turn yrh_map_tmp 360
scoreboard players operation #controller_yaw yrh_map_tmp %= #controller_full_turn yrh_map_tmp
execute if score #controller_yaw yrh_map_tmp matches ..-1 run scoreboard players add #controller_yaw yrh_map_tmp 360
data modify storage yrh.map:_ worldmap.click.action set value "pan_south"
execute if score #controller_yaw yrh_map_tmp matches 45..134 run data modify storage yrh.map:_ worldmap.click.action set value "pan_west"
execute if score #controller_yaw yrh_map_tmp matches 135..224 run data modify storage yrh.map:_ worldmap.click.action set value "pan_north"
execute if score #controller_yaw yrh_map_tmp matches 225..314 run data modify storage yrh.map:_ worldmap.click.action set value "pan_east"
$execute as @e[type=minecraft:interaction,tag=yrh.map.worldmap_anchor,scores={yrh_map_id=$(map_id)},limit=1] at @s run return run function yrh.map:function/worldmap/input/run_pan_action with storage yrh.map:_ worldmap.click
function yrh.map:function/worldmap/input/cannot_operate_click with storage yrh.map:_ worldmap.click
