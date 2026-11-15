execute unless entity @s[gamemode=creative] run return 0
execute unless function yrh.map:function/worldmap/waypoint/markers/clear_owned_map_for_tp run return 0
$data modify storage yrh.map:_ surface_access.pos set value {x:$(x),z:$(z)}
$execute in minecraft:overworld positioned $(x) 0 $(z) positioned ~0.5 ~ ~0.5 run function yrh.map:function/worldmap/waypoint/markers/teleport_surface
