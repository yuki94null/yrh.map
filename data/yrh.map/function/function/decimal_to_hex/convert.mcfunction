data modify storage yrh.map:_ hex_conversion.values set value {}
data modify storage yrh.map:_ hex_conversion.nibbles set value {}
data modify storage yrh.map:_ hex_conversion.digits set value {r_hi:"0",r_lo:"0",g_hi:"0",g_lo:"0",b_hi:"0",b_lo:"0"}
data modify storage yrh.map:_ hex_conversion.result set value {r:"00",g:"00",b:"00"}
data modify storage yrh.map:_ hex_conversion.values.r set compute default integer {"type":"minecraft:from_float","input":{"type":"minecraft:round","input":{"type":"minecraft:min","inputs":[255.0,{"type":"minecraft:max","inputs":[0.0,{"type":"minecraft:storage","storage":"yrh.map:_","path":"hex_conversion.input.r","fallback":0.0}]}]}}}
data modify storage yrh.map:_ hex_conversion.nibbles.r_hi set compute default integer {"type":"minecraft:div","left":{"type":"minecraft:storage","storage":"yrh.map:_","path":"hex_conversion.values.r","fallback":0},"right":16}
data modify storage yrh.map:_ hex_conversion.nibbles.r_lo set compute default integer {"type":"minecraft:mod","left":{"type":"minecraft:storage","storage":"yrh.map:_","path":"hex_conversion.values.r","fallback":0},"right":16}
data modify storage yrh.map:_ hex_conversion.values.g set compute default integer {"type":"minecraft:from_float","input":{"type":"minecraft:round","input":{"type":"minecraft:min","inputs":[255.0,{"type":"minecraft:max","inputs":[0.0,{"type":"minecraft:storage","storage":"yrh.map:_","path":"hex_conversion.input.g","fallback":0.0}]}]}}}
data modify storage yrh.map:_ hex_conversion.nibbles.g_hi set compute default integer {"type":"minecraft:div","left":{"type":"minecraft:storage","storage":"yrh.map:_","path":"hex_conversion.values.g","fallback":0},"right":16}
data modify storage yrh.map:_ hex_conversion.nibbles.g_lo set compute default integer {"type":"minecraft:mod","left":{"type":"minecraft:storage","storage":"yrh.map:_","path":"hex_conversion.values.g","fallback":0},"right":16}
data modify storage yrh.map:_ hex_conversion.values.b set compute default integer {"type":"minecraft:from_float","input":{"type":"minecraft:round","input":{"type":"minecraft:min","inputs":[255.0,{"type":"minecraft:max","inputs":[0.0,{"type":"minecraft:storage","storage":"yrh.map:_","path":"hex_conversion.input.b","fallback":0.0}]}]}}}
data modify storage yrh.map:_ hex_conversion.nibbles.b_hi set compute default integer {"type":"minecraft:div","left":{"type":"minecraft:storage","storage":"yrh.map:_","path":"hex_conversion.values.b","fallback":0},"right":16}
data modify storage yrh.map:_ hex_conversion.nibbles.b_lo set compute default integer {"type":"minecraft:mod","left":{"type":"minecraft:storage","storage":"yrh.map:_","path":"hex_conversion.values.b","fallback":0},"right":16}
function yrh.map:function/decimal_to_hex/r_hi
function yrh.map:function/decimal_to_hex/r_lo
function yrh.map:function/decimal_to_hex/g_hi
function yrh.map:function/decimal_to_hex/g_lo
function yrh.map:function/decimal_to_hex/b_hi
function yrh.map:function/decimal_to_hex/b_lo
function yrh.map:function/decimal_to_hex/assemble with storage yrh.map:_ hex_conversion.digits
