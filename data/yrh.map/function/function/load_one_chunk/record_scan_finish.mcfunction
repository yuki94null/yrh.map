$data modify storage yrh.map:render "minecraft:over_world".scale_1.chunks."$(x),$(z)".scan_validated set value 1b
$execute store result storage yrh.map:render "minecraft:over_world".scale_1.chunks."$(x),$(z)".last_scan int 1 run time query gametime
$data modify storage yrh.map:_ terrain.last_completed set value {x:$(x),z:$(z)}
