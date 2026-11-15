# Change the nearest map's sampled chunk without moving its physical anchor.
scoreboard objectives add yrh_map_tmp dummy
scoreboard objectives add yrh_map_ax dummy
scoreboard objectives add yrh_map_az dummy
scoreboard objectives add yrh_map_tx dummy
scoreboard objectives add yrh_map_tz dummy
scoreboard players set #sixteen yrh_map_tmp 16
execute positioned ~-8 ~ ~-8 positioned ~72057594067927936 ~ ~72057594067927936 positioned ~-72057594067927936 ~ ~-72057594067927936 summon minecraft:marker run function yrh.map:function/worldmap/capture_chunk_origin
execute as @e[type=minecraft:interaction,tag=yrh.map.worldmap_anchor,limit=1,sort=nearest] at @s run function yrh.map:function/worldmap/set_reference
function yrh.map:debug/reference_status
function yrh.map:debug/queue_status
