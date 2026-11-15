data modify storage yrh.map:_ worldmap.active_job.cached_color set value 0b
$execute if data storage yrh.map:render "minecraft:over_world".scale_1.chunks."$(x),$(z)"{complete:1b} run data modify storage yrh.map:_ worldmap.active_job.cached_color set value 1b
