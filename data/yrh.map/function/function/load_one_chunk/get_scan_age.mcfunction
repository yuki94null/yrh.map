$execute store result score #terrain_last yrh_map_tmp run data get storage yrh.map:render "minecraft:over_world".scale_1.chunks."$(x),$(z)".last_scan
scoreboard players operation #terrain_age yrh_map_tmp = #terrain_now yrh_map_tmp
scoreboard players operation #terrain_age yrh_map_tmp -= #terrain_last yrh_map_tmp
