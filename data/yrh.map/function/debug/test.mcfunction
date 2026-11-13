#|| --- CrossRefs --- ||#
#|| @yrh.map:debug/test
#||
#||    # function
#||        @yrh.map:tick
#||
#|| ------ End ------ ||#

execute positioned over ocean_floor positioned ~ ~-1 ~ run function yrh.map:function/color_check/root

data modify storage yrh.map:_ sample set value {r:0,g:0,b:0,height:0.0f,height_factor:1.0f,brightness:0}
data modify storage yrh.map:_ sample merge from storage yrh.map:_ tmp

function yrh.map:debug/mcr with storage yrh.map:_ sample
