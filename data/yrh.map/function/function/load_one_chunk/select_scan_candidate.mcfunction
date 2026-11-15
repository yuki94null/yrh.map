tag @s add yrh.map.scan_turn
execute unless score @s yrh_map_scan_i matches 0..337 run scoreboard players set @s yrh_map_scan_i 0
data modify storage yrh.map:_ terrain.offset set value {index:0,mode:"new"}
scoreboard players operation #scan_offset_index yrh_map_tmp = @s yrh_map_scan_i
execute if score @s yrh_map_scan_i matches 169.. run data modify storage yrh.map:_ terrain.offset.mode set value "refresh"
execute if score @s yrh_map_scan_i matches 169.. run scoreboard players remove #scan_offset_index yrh_map_tmp 169
execute store result storage yrh.map:_ terrain.offset.index int 1 run scoreboard players get #scan_offset_index yrh_map_tmp
scoreboard players add @s yrh_map_scan_i 1
execute positioned ~-8 ~ ~-8 positioned ~72057594067927936 ~ ~72057594067927936 positioned ~-72057594067927936 ~ ~-72057594067927936 run function yrh.map:function/load_one_chunk/scan_offset with storage yrh.map:_ terrain.offset
