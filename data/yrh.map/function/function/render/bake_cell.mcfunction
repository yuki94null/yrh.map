function yrh.map:function/render/read_bake_sample
scoreboard players set #color_changed yrh_map_tmp 0
$execute unless data storage yrh.map:_ surface_access.sample store success score #color_changed yrh_map_tmp run data remove storage yrh.map:render "minecraft:over_world".scale_1.$(x).$(z)
execute if score #color_changed yrh_map_tmp matches 1 run scoreboard players add #terrain_revision yrh_map_tmp 1
execute if data storage yrh.map:_ surface_access.sample run function yrh.map:function/render/bake_present with storage yrh.map:_ render.bake_pos
