execute unless data entity @s data.yrhmap.PlatformPos run data modify entity @s data.yrhmap.PlatformPos set from entity @s Pos
execute unless data entity @s {Motion:[0d,0d,0d]} run function yrh.map:function/worldmap/platform/restore_position
execute store result score #map_floor_still yrh_map_tmp run data get entity @s still_timeout
execute if score #map_floor_still yrh_map_tmp matches ..5 run data modify entity @s still_timeout set value 2147483647
