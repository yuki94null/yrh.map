data modify storage yrh.map:_ sample.hex_work set value {values:{},nibbles:{},digits:{}}
data modify storage yrh.map:_ sample.hex_work.digits set value {r_hi:"0",r_lo:"0",g_hi:"0",g_lo:"0",b_hi:"0",b_lo:"0"}
data modify storage yrh.map:_ sample.hex set value {r:"00",g:"00",b:"00"}
data modify storage yrh.map:_ sample.hex_work.values.r set compute default integer {"type":"minecraft:from_float","input":{"type":"minecraft:round","input":{"type":"minecraft:min","inputs":[255.0,{"type":"minecraft:max","inputs":[0.0,{"type":"minecraft:storage","storage":"yrh.map:_","path":"sample.r","fallback":0.0}]}]}}}
data modify storage yrh.map:_ sample.hex_work.nibbles.r_hi set compute default integer {"type":"minecraft:div","left":{"type":"minecraft:storage","storage":"yrh.map:_","path":"sample.hex_work.values.r","fallback":0},"right":16}
data modify storage yrh.map:_ sample.hex_work.nibbles.r_lo set compute default integer {"type":"minecraft:mod","left":{"type":"minecraft:storage","storage":"yrh.map:_","path":"sample.hex_work.values.r","fallback":0},"right":16}
data modify storage yrh.map:_ sample.hex_work.values.g set compute default integer {"type":"minecraft:from_float","input":{"type":"minecraft:round","input":{"type":"minecraft:min","inputs":[255.0,{"type":"minecraft:max","inputs":[0.0,{"type":"minecraft:storage","storage":"yrh.map:_","path":"sample.g","fallback":0.0}]}]}}}
data modify storage yrh.map:_ sample.hex_work.nibbles.g_hi set compute default integer {"type":"minecraft:div","left":{"type":"minecraft:storage","storage":"yrh.map:_","path":"sample.hex_work.values.g","fallback":0},"right":16}
data modify storage yrh.map:_ sample.hex_work.nibbles.g_lo set compute default integer {"type":"minecraft:mod","left":{"type":"minecraft:storage","storage":"yrh.map:_","path":"sample.hex_work.values.g","fallback":0},"right":16}
data modify storage yrh.map:_ sample.hex_work.values.b set compute default integer {"type":"minecraft:from_float","input":{"type":"minecraft:round","input":{"type":"minecraft:min","inputs":[255.0,{"type":"minecraft:max","inputs":[0.0,{"type":"minecraft:storage","storage":"yrh.map:_","path":"sample.b","fallback":0.0}]}]}}}
data modify storage yrh.map:_ sample.hex_work.nibbles.b_hi set compute default integer {"type":"minecraft:div","left":{"type":"minecraft:storage","storage":"yrh.map:_","path":"sample.hex_work.values.b","fallback":0},"right":16}
data modify storage yrh.map:_ sample.hex_work.nibbles.b_lo set compute default integer {"type":"minecraft:mod","left":{"type":"minecraft:storage","storage":"yrh.map:_","path":"sample.hex_work.values.b","fallback":0},"right":16}
function yrh.map:function/decimal_to_hex/r_hi
function yrh.map:function/decimal_to_hex/r_lo
function yrh.map:function/decimal_to_hex/g_hi
function yrh.map:function/decimal_to_hex/g_lo
function yrh.map:function/decimal_to_hex/b_hi
function yrh.map:function/decimal_to_hex/b_lo
function yrh.map:function/decimal_to_hex/assemble with storage yrh.map:_ sample.hex_work.digits
