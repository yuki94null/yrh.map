execute positioned over world_surface positioned ~ ~-1 ~ run function yrh.map:function/color_check/root
data modify storage yrh.map:_ sample set value {r:0,g:0,b:0,height:0.0f,height_factor:1.0f,brightness:0}
data modify storage yrh.map:_ sample merge from storage yrh.map:_ tmp

execute positioned over ocean_floor positioned ~ ~-1 ~ summon marker run function yrh.map:function/get_positional_data/height

function yrh.map:function/compute_height/root
function yrh.map:function/compute_brightness/root

function yrh.map:function/decimal_to_hex/root

function yrh.map:debug/mcr with storage yrh.map:_ sample.hex
