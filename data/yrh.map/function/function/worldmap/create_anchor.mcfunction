# The interaction is the physical map origin; worldmap.args stores its data chunk.
scoreboard players set @s yrh_map_ax 0
scoreboard players set @s yrh_map_az 0
execute store result score @s yrh_map_ax run data get storage yrh.map:_ worldmap.args.x
execute store result score @s yrh_map_az run data get storage yrh.map:_ worldmap.args.z
scoreboard players operation @s yrh_map_hx = @s yrh_map_ax
scoreboard players operation @s yrh_map_hz = @s yrh_map_az
execute if score #map_size yrh_map_tmp matches 13 run tag @s add yrh.map.size_13
execute if score #map_size yrh_map_tmp matches 11 run tag @s add yrh.map.size_11
execute if score #map_size yrh_map_tmp matches 7 run tag @s add yrh.map.size_7
execute if score #map_size yrh_map_tmp matches 9 run tag @s add yrh.map.size_9
execute unless score #map_size yrh_map_tmp matches 7 unless score #map_size yrh_map_tmp matches 9 unless score #map_size yrh_map_tmp matches 11 unless score #map_size yrh_map_tmp matches 13 run tag @s add yrh.map.size_5
tag @s add yrh.map.stationary_tiles
data modify entity @s data.yrhmap.Quality set value "full"
execute if data storage yrh.map:_ worldmap.settings{quality:"flat"} run data modify entity @s data.yrhmap.Quality set value "flat"
execute if data storage yrh.map:_ worldmap{placement_quality:"flat"} run data modify entity @s data.yrhmap.Quality set value "flat"
execute if data storage yrh.map:_ worldmap{placement_quality:"full"} run data modify entity @s data.yrhmap.Quality set value "full"
function yrh.map:function/worldmap/allocate_map_id
function yrh.map:function/worldmap/create_tiles
execute if data storage yrh.map:_ worldmap.placement_owner run data modify entity @s data.yrhmap.Owner set from storage yrh.map:_ worldmap.placement_owner
execute if data entity @s data.yrhmap.Owner run function yrh.map:function/worldmap/bind_player_map
data merge entity @s {width:0f,height:0f}
execute if data entity @s data.yrhmap.Owner run function yrh.map:function/worldmap/create_pan_controls
function yrh.map:function/worldmap/create_map_backing
function yrh.map:function/worldmap/platform/create
function yrh.map:function/worldmap/bind_map_parts
data modify storage yrh.map:_ worldmap.reload set value 1b
function yrh.map:function/worldmap/commit_reference
data remove storage yrh.map:_ worldmap.reload
