execute store result score #scale_tile_factor yrh_map_tmp run data get storage yrh.map:_ worldmap.scaled_tile_cache.scale
scoreboard players set #scale_tile_stride yrh_map_tmp 32
scoreboard players set #scale_tile_origin yrh_map_tmp -8
execute if score #scale_tile_factor yrh_map_tmp matches 4 run scoreboard players set #scale_tile_stride yrh_map_tmp 64
execute if score #scale_tile_factor yrh_map_tmp matches 4 run scoreboard players set #scale_tile_origin yrh_map_tmp -24
execute if score #scale_tile_factor yrh_map_tmp matches 8 run scoreboard players set #scale_tile_stride yrh_map_tmp 128
execute if score #scale_tile_factor yrh_map_tmp matches 8 run scoreboard players set #scale_tile_origin yrh_map_tmp -56
execute if score #scale_tile_factor yrh_map_tmp matches 16 run scoreboard players set #scale_tile_stride yrh_map_tmp 256
execute if score #scale_tile_factor yrh_map_tmp matches 16 run scoreboard players set #scale_tile_origin yrh_map_tmp -120
scoreboard players operation #scale_tile_x yrh_map_tmp = @s yrh_map_tx
scoreboard players operation #scale_tile_x yrh_map_tmp *= #scale_tile_stride yrh_map_tmp
scoreboard players operation #scale_tile_x yrh_map_tmp += #reference_x yrh_map_tmp
scoreboard players operation #scale_tile_x yrh_map_tmp += #scale_tile_origin yrh_map_tmp
scoreboard players operation #scale_tile_z yrh_map_tmp = @s yrh_map_tz
scoreboard players operation #scale_tile_z yrh_map_tmp *= #scale_tile_stride yrh_map_tmp
scoreboard players operation #scale_tile_z yrh_map_tmp += #reference_z yrh_map_tmp
scoreboard players operation #scale_tile_z yrh_map_tmp += #scale_tile_origin yrh_map_tmp
execute store result storage yrh.map:_ worldmap.scaled_tile_cache.sx int 1 run scoreboard players get #scale_tile_x yrh_map_tmp
execute store result storage yrh.map:_ worldmap.scaled_tile_cache.sz int 1 run scoreboard players get #scale_tile_z yrh_map_tmp
tag @s remove yrh.map.worldmap_cache_pending
tag @s add yrh.map.scaled_pending
function yrh.map:function/worldmap/scaled/cache/show_tile_cache_at with storage yrh.map:_ worldmap.scaled_tile_cache
