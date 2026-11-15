data modify storage yrh.map:waypoint_placement ray.field set value "origin"
execute summon minecraft:marker run function yrh.map:function/worldmap/waypoint/placement/capture_local with storage yrh.map:waypoint_placement ray
