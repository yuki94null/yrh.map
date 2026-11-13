data modify storage yrh.map:_ tmp set value {r:0,g:0,b:0}
execute if block ~ ~ ~ #yrh.map:color_category/water run return run function yrh.map:function/color_check/biome/water/root
execute if block ~ ~ ~ #yrh.map:color_category/dry_foliage run return run function yrh.map:function/color_check/biome/dry_foliage/root
execute if block ~ ~ ~ #yrh.map:color_category/grass if block ~ ~ ~ #yrh.map:color_category/foliage run return run function yrh.map:function/color_check/biome/foliage/root
execute if block ~ ~ ~ #yrh.map:color_category/grass run return run function yrh.map:function/color_check/biome/grass/root
function yrh.map:function/color_check/r/root
function yrh.map:function/color_check/g/root
function yrh.map:function/color_check/b/root
