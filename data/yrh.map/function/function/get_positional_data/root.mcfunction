data modify storage yrh.map:_ sample set value {r:0,g:0,b:0,height:0.0f,height_factor:1.0f,brightness:0,water:0b}
execute positioned over world_surface positioned ~ ~-1 ~ run function yrh.map:function/get_positional_data/read_surface
execute if data storage yrh.map:_ sample{water:1b} positioned over world_surface positioned ~ ~-1 ~ summon marker run function yrh.map:function/get_positional_data/surface_height
execute positioned over ocean_floor positioned ~ ~-1 ~ summon marker run function yrh.map:function/get_positional_data/height
execute if data storage yrh.map:_ sample{water:1b} run function yrh.map:function/get_positional_data/water_depth

function yrh.map:function/compute_height/root
