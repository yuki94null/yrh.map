#|| --- CrossRefs --- ||#
#|| @yrh.map:debug/mcr
#||
#||    # function
#||        @yrh.map:debug/test
#||
#|| ------ End ------ ||#

# $tellraw @a [{text:"■$(r)$(g)$(b)",color:"#$(r)$(g)$(b)"}]

# $tellraw @a [{text:"RGB $(r),$(g),$(b) / Y $(height) / factor $(height_factor)"}]
$data modify storage yrh.map:_ surface_access.pos set value {x:$(posX),z:$(posZ)}
function yrh.map:function/load_one_chunk/resolve_surface_cell
function yrh.map:function/load_one_chunk/read_surface_cell with storage yrh.map:_ surface_access.pos
tellraw @s [{text:"Surface sample "},{nbt:"surface_access.pos",storage:"yrh.map:_"},{text:" → "},{nbt:"surface_access.sample",storage:"yrh.map:_"}]
