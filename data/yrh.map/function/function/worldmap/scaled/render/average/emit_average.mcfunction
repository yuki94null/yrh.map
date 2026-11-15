scoreboard players operation #scale_r yrh_map_tmp /= #scale_count yrh_map_tmp
execute store result storage yrh.map:_ hex_conversion.input.r int 1 run scoreboard players get #scale_r yrh_map_tmp
scoreboard players operation #scale_g yrh_map_tmp /= #scale_count yrh_map_tmp
execute store result storage yrh.map:_ hex_conversion.input.g int 1 run scoreboard players get #scale_g yrh_map_tmp
scoreboard players operation #scale_b yrh_map_tmp /= #scale_count yrh_map_tmp
execute store result storage yrh.map:_ hex_conversion.input.b int 1 run scoreboard players get #scale_b yrh_map_tmp
function yrh.map:function/decimal_to_hex/convert
function yrh.map:function/worldmap/scaled/render/average/emit_color with storage yrh.map:_ hex_conversion.result
