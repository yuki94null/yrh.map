data remove storage yrh.map:_ hex_conversion.input
data modify storage yrh.map:_ hex_conversion.input set from storage yrh.map:_ sample
function yrh.map:function/decimal_to_hex/convert
data modify storage yrh.map:_ sample.hex set from storage yrh.map:_ hex_conversion.result
