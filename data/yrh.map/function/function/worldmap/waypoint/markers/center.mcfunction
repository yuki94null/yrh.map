execute store result score #waypoint_pan_x yrh_map_tmp run data get storage yrh.map:_ worldmap.click.x
execute store result score #waypoint_pan_z yrh_map_tmp run data get storage yrh.map:_ worldmap.click.z
scoreboard players operation #waypoint_pan_x yrh_map_tmp -= @s yrh_map_ax
scoreboard players operation #waypoint_pan_z yrh_map_tmp -= @s yrh_map_az
execute if score #waypoint_pan_x yrh_map_tmp matches 0 if score #waypoint_pan_z yrh_map_tmp matches 0 run return 0
execute if entity @s[tag=yrh.map.stationary_tiles] if function yrh.map:function/worldmap/waypoint/markers/plan_pan run return run function yrh.map:function/worldmap/waypoint/markers/pan
execute store result score @s yrh_map_ax run data get storage yrh.map:_ worldmap.click.x
execute store result score @s yrh_map_az run data get storage yrh.map:_ worldmap.click.z
function yrh.map:function/worldmap/commit_reference
