data remove storage yrh.map:_ render.mergeable
# Use the separately cached, compact render color when available.
$execute if data storage yrh.map:render "minecraft:over_world".scale_1.$(x).$(z).base run return run function yrh.map:function/render/cell_present with storage yrh.map:_ render.position
$data modify storage yrh.map:_ render.c$(i) set value {text:"■",font:"yrh.map:map_pixel",color:"#000000",shadow_color:0}
$execute if data storage yrh.map:render "minecraft:over_world".scale_1.$(x).$(z) unless data storage yrh.map:render "minecraft:over_world".scale_1.$(x).$(z).base run function yrh.map:function/render/cell_legacy with storage yrh.map:_ render.position
$execute unless data storage yrh.map:render "minecraft:over_world".scale_1.$(x).$(z) if data storage yrh.map:surface "minecraft:over_world".$(x)[].$(z) run function yrh.map:function/render/cache_missing with storage yrh.map:_ render.position
$execute unless data storage yrh.map:render "minecraft:over_world".scale_1.$(x).$(z) if data storage yrh.map:surface "minecraft:over_world".$(x)[].$(z).color run function yrh.map:function/render/cell_surface_color with storage yrh.map:_ render.position
$execute unless data storage yrh.map:render "minecraft:over_world".scale_1.$(x).$(z) if data storage yrh.map:surface "minecraft:over_world".$(x)[].$(z).component run data modify storage yrh.map:_ render.c$(i) set from storage yrh.map:surface "minecraft:over_world".$(x)[].$(z).component
