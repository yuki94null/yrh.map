function yrh.map:function/color_check/root
execute if block ~ ~ ~ #yrh.map:color_category/water run data modify storage yrh.map:_ sample.water set value 1b
data modify storage yrh.map:_ sample merge from storage yrh.map:_ color_lookup
function yrh.map:function/get_brightness/root
