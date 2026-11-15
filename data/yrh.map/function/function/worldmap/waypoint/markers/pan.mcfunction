function yrh.map:function/worldmap/begin_pan
scoreboard players operation #waypoint_pan_span yrh_map_tmp = #map_radius yrh_map_tmp
scoreboard players operation #waypoint_pan_span yrh_map_tmp -= #map_min yrh_map_tmp
scoreboard players add #waypoint_pan_span yrh_map_tmp 1
execute store result score @s yrh_map_ax run data get storage yrh.map:_ worldmap.click.x
execute store result score @s yrh_map_az run data get storage yrh.map:_ worldmap.click.z
function yrh.map:function/worldmap/read_pan_reference
execute if score #waypoint_pan_width yrh_map_tmp matches 32.. run function yrh.map:function/worldmap/scaled/cache/configure_tile_cache
execute if score #waypoint_pan_width yrh_map_tmp matches 32.. run data modify storage yrh.map:_ worldmap.scaled_pan set value 1b
function yrh.map:function/worldmap/waypoint/markers/pan_tiles with storage yrh.map:_ worldmap.click
data remove storage yrh.map:_ worldmap.scaled_pan
function yrh.map:function/worldmap/commit_reference
