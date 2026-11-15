data modify storage yrh.map:_ worldmap.display_scaled set value 0b
$execute if entity @e[type=minecraft:interaction,tag=yrh.map.worldmap_anchor,tag=yrh.map.scale_4,scores={yrh_map_id=$(map_id)},limit=1] run data modify storage yrh.map:_ worldmap.display_scaled set value 1b
$execute if entity @e[type=minecraft:interaction,tag=yrh.map.worldmap_anchor,tag=yrh.map.scale_8,scores={yrh_map_id=$(map_id)},limit=1] run data modify storage yrh.map:_ worldmap.display_scaled set value 1b
$execute if entity @e[type=minecraft:interaction,tag=yrh.map.worldmap_anchor,tag=yrh.map.scale_16,scores={yrh_map_id=$(map_id)},limit=1] run data modify storage yrh.map:_ worldmap.display_scaled set value 1b
$execute if entity @e[type=minecraft:interaction,tag=yrh.map.worldmap_anchor,tag=yrh.map.scale_2,scores={yrh_map_id=$(map_id)},limit=1] run data modify storage yrh.map:_ worldmap.display_scaled set value 1b
data modify storage yrh.map:_ worldmap.display_quality set value "full"
$execute as @e[type=minecraft:interaction,tag=yrh.map.worldmap_anchor,scores={yrh_map_id=$(map_id)},limit=1] run scoreboard players operation #reference_x yrh_map_tmp = @s yrh_map_ax
$execute as @e[type=minecraft:interaction,tag=yrh.map.worldmap_anchor,scores={yrh_map_id=$(map_id)},limit=1] run scoreboard players operation #reference_z yrh_map_tmp = @s yrh_map_az
$execute as @e[type=minecraft:interaction,tag=yrh.map.worldmap_anchor,scores={yrh_map_id=$(map_id)},limit=1] if data entity @s data.yrhmap.Quality run data modify storage yrh.map:_ worldmap.display_quality set from entity @s data.yrhmap.Quality
$execute if data storage yrh.map:_ worldmap{display_scaled:1b} as @e[type=minecraft:interaction,tag=yrh.map.worldmap_anchor,scores={yrh_map_id=$(map_id)},limit=1] run function yrh.map:function/worldmap/scaled/cache/configure_tile_cache
