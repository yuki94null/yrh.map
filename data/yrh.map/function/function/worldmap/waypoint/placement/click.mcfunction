execute unless data entity @s data.yrhmap.WaypointPlacement run return 0
execute if data storage yrh.map:_ worldmap.click{sneaking:1b} run return run function yrh.map:function/worldmap/waypoint/clear_selection
function yrh.map:function/worldmap/waypoint/read_page
execute unless score #waypoint_page yrh_map_tmp matches 0 run return run function yrh.map:function/worldmap/waypoint/placement/cancel
data modify storage yrh.map:_ worldmap.click.slot set from entity @s data.yrhmap.WaypointPlacement
data modify storage yrh.map:waypoint_placement ray set value {}
function yrh.map:function/worldmap/waypoint/board_size
execute store result storage yrh.map:waypoint_placement ray.size int 1 run scoreboard players get #waypoint_board_size yrh_map_tmp
function yrh.map:function/worldmap/waypoint/markers/read_pan_width
execute store result storage yrh.map:waypoint_placement ray.tile_width int 1 run scoreboard players get #waypoint_pan_width yrh_map_tmp
scoreboard players set #waypoint_ray_zero yrh_map_tmp 0
execute store result score #waypoint_ray_offset yrh_map_tmp run data get entity @s Pos[0]
scoreboard players operation #waypoint_ray_neg_offset yrh_map_tmp = #waypoint_ray_zero yrh_map_tmp
scoreboard players operation #waypoint_ray_neg_offset yrh_map_tmp -= #waypoint_ray_offset yrh_map_tmp
execute store result storage yrh.map:waypoint_placement ray.x int 1 run scoreboard players get #waypoint_ray_neg_offset yrh_map_tmp
execute store result score #waypoint_ray_offset yrh_map_tmp run data get entity @s Pos[1]
scoreboard players operation #waypoint_ray_neg_offset yrh_map_tmp = #waypoint_ray_zero yrh_map_tmp
scoreboard players operation #waypoint_ray_neg_offset yrh_map_tmp -= #waypoint_ray_offset yrh_map_tmp
execute store result storage yrh.map:waypoint_placement ray.y int 1 run scoreboard players get #waypoint_ray_neg_offset yrh_map_tmp
execute store result score #waypoint_ray_offset yrh_map_tmp run data get entity @s Pos[2]
scoreboard players operation #waypoint_ray_neg_offset yrh_map_tmp = #waypoint_ray_zero yrh_map_tmp
scoreboard players operation #waypoint_ray_neg_offset yrh_map_tmp -= #waypoint_ray_offset yrh_map_tmp
execute store result storage yrh.map:waypoint_placement ray.z int 1 run scoreboard players get #waypoint_ray_neg_offset yrh_map_tmp
function yrh.map:function/worldmap/waypoint/placement/sample_anchor
function yrh.map:function/worldmap/waypoint/placement/sample_player with storage yrh.map:_ worldmap.click
execute unless data storage yrh.map:waypoint_placement ray.origin run return 0
execute unless data storage yrh.map:waypoint_placement ray.eye run return 0
execute unless data storage yrh.map:waypoint_placement ray.forward run return 0
execute unless function yrh.map:function/worldmap/waypoint/placement/intersect run return run function yrh.map:function/worldmap/waypoint/placement/invalid_click with storage yrh.map:_ worldmap.click
function yrh.map:function/worldmap/waypoint/save
function yrh.map:function/worldmap/waypoint/placement/cancel
