execute summon marker run function yrh.map:function/load_one_chunk/get_pos_x
data modify storage yrh.map:_ mcr.chunkX set from storage yrh.map:_ mcr.posX
execute summon marker run function yrh.map:function/load_one_chunk/get_pos_z
data modify storage yrh.map:_ mcr.chunkZ set from storage yrh.map:_ mcr.posZ
execute unless data storage yrh.map:render "minecraft:over_world" run data modify storage yrh.map:render "minecraft:over_world" set value {}
execute unless data storage yrh.map:render "minecraft:over_world".scale_1 run data modify storage yrh.map:render "minecraft:over_world".scale_1 set value {}
execute store result storage yrh.map:_ terrain.manual_origin.start_revision int 1 run scoreboard players get #terrain_revision yrh_map_tmp
function yrh.map:function/load_one_chunk/corner
function yrh.map:function/render/bake_chunk with storage yrh.map:_ mcr
data modify storage yrh.map:_ terrain.manual_origin.x set from storage yrh.map:_ mcr.chunkX
data modify storage yrh.map:_ terrain.manual_origin.z set from storage yrh.map:_ mcr.chunkZ
function yrh.map:function/worldmap/mark_color_chunk_complete with storage yrh.map:_ terrain.manual_origin
