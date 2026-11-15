execute store result score #waypoint_ray_reach yrh_map_tmp run attribute @s minecraft:entity_interaction_range get 1000
scoreboard players add #waypoint_ray_reach yrh_map_tmp 50
data modify storage yrh.map:waypoint_placement ray.field set value "eye"
execute anchored eyes positioned ^ ^ ^ summon minecraft:marker run function yrh.map:function/worldmap/waypoint/placement/capture_local with storage yrh.map:waypoint_placement ray
data modify storage yrh.map:waypoint_placement ray.field set value "forward"
execute anchored eyes positioned ^ ^ ^1 summon minecraft:marker run function yrh.map:function/worldmap/waypoint/placement/capture_local with storage yrh.map:waypoint_placement ray
