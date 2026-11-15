data remove storage yrh.map:_ surface_access.sample
$execute if data storage yrh.map:surface chunks.c_$(cx)_$(cz).cells.x$(lx).z$(lz) run return run data modify storage yrh.map:_ surface_access.sample set from storage yrh.map:surface chunks.c_$(cx)_$(cz).cells.x$(lx).z$(lz)
$execute unless data storage yrh.map:surface chunks.c_$(cx)_$(cz).cells.x$(lx) run data modify storage yrh.map:_ surface_access.sample set from storage yrh.map:surface "minecraft:over_world".$(x)[].$(z)
