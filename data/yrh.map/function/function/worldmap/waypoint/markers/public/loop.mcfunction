execute if score @s yrh_map_wp_public >= #waypoint_public_count yrh_map_tmp run return run tag @s remove yrh.map.waypoint_public_pending
execute unless score #waypoint_public_budget yrh_map_tmp matches 1.. run return 0
execute store result storage yrh.map:_ worldmap.waypoint_draw.index int 1 run scoreboard players get @s yrh_map_wp_public
scoreboard players operation #waypoint_public_slot yrh_map_tmp = @s yrh_map_wp_public
scoreboard players add #waypoint_public_slot yrh_map_tmp 13
execute store result storage yrh.map:_ worldmap.waypoint_draw.slot int 1 run scoreboard players get #waypoint_public_slot yrh_map_tmp
function yrh.map:function/worldmap/waypoint/markers/public/draw_pin with storage yrh.map:_ worldmap.waypoint_draw
scoreboard players add @s yrh_map_wp_public 1
scoreboard players remove #waypoint_public_budget yrh_map_tmp 1
function yrh.map:function/worldmap/waypoint/markers/public/loop
