data modify storage yrh.map:_ color_lookup set value {r:0,g:0,b:0}
execute if block ~ ~ ~ minecraft:pale_oak_leaves run return run data modify storage yrh.map:_ color_lookup set value {r:110,g:110,b:110}
execute if block ~ ~ ~ #yrh.map:color_category/water run return run function yrh.map:function/color_check/biome/water/root
execute if block ~ ~ ~ #yrh.map:color_category/dry_foliage run return run function yrh.map:function/color_check/biome/dry_foliage/root
execute if block ~ ~ ~ #yrh.map:color_category/grass if block ~ ~ ~ #yrh.map:color_category/foliage run return run function yrh.map:function/color_check/biome/foliage/root
execute if block ~ ~ ~ #yrh.map:color_category/grass run return run function yrh.map:function/color_check/biome/grass/root
function yrh.map:function/color_check/r/root
function yrh.map:function/color_check/g/root
function yrh.map:function/color_check/b/root
