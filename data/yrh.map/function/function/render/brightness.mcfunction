# Diffuse light over the cached map; brightness stays within 0..15.
data modify storage yrh.map:_ render.max_light set from storage yrh.map:_ sample.brightness
data modify storage yrh.map:_ render.neighbor.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"render.position.x","fallback":0},0]}
data modify storage yrh.map:_ render.neighbor.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"render.position.z","fallback":0},-1]}
data modify storage yrh.map:_ render.neighbor.distance set value 1
function yrh.map:function/render/light_neighbor with storage yrh.map:_ render.neighbor
data modify storage yrh.map:_ render.neighbor.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"render.position.x","fallback":0},-1]}
data modify storage yrh.map:_ render.neighbor.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"render.position.z","fallback":0},0]}
data modify storage yrh.map:_ render.neighbor.distance set value 1
function yrh.map:function/render/light_neighbor with storage yrh.map:_ render.neighbor
data modify storage yrh.map:_ render.neighbor.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"render.position.x","fallback":0},1]}
data modify storage yrh.map:_ render.neighbor.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"render.position.z","fallback":0},0]}
data modify storage yrh.map:_ render.neighbor.distance set value 1
function yrh.map:function/render/light_neighbor with storage yrh.map:_ render.neighbor
data modify storage yrh.map:_ render.neighbor.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"render.position.x","fallback":0},0]}
data modify storage yrh.map:_ render.neighbor.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"render.position.z","fallback":0},1]}
data modify storage yrh.map:_ render.neighbor.distance set value 1
function yrh.map:function/render/light_neighbor with storage yrh.map:_ render.neighbor
data modify storage yrh.map:_ render.neighbor.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"render.position.x","fallback":0},0]}
data modify storage yrh.map:_ render.neighbor.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"render.position.z","fallback":0},-2]}
data modify storage yrh.map:_ render.neighbor.distance set value 2
function yrh.map:function/render/light_neighbor with storage yrh.map:_ render.neighbor
data modify storage yrh.map:_ render.neighbor.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"render.position.x","fallback":0},-1]}
data modify storage yrh.map:_ render.neighbor.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"render.position.z","fallback":0},-1]}
data modify storage yrh.map:_ render.neighbor.distance set value 2
function yrh.map:function/render/light_neighbor with storage yrh.map:_ render.neighbor
data modify storage yrh.map:_ render.neighbor.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"render.position.x","fallback":0},1]}
data modify storage yrh.map:_ render.neighbor.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"render.position.z","fallback":0},-1]}
data modify storage yrh.map:_ render.neighbor.distance set value 2
function yrh.map:function/render/light_neighbor with storage yrh.map:_ render.neighbor
data modify storage yrh.map:_ render.neighbor.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"render.position.x","fallback":0},-2]}
data modify storage yrh.map:_ render.neighbor.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"render.position.z","fallback":0},0]}
data modify storage yrh.map:_ render.neighbor.distance set value 2
function yrh.map:function/render/light_neighbor with storage yrh.map:_ render.neighbor
data modify storage yrh.map:_ render.neighbor.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"render.position.x","fallback":0},2]}
data modify storage yrh.map:_ render.neighbor.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"render.position.z","fallback":0},0]}
data modify storage yrh.map:_ render.neighbor.distance set value 2
function yrh.map:function/render/light_neighbor with storage yrh.map:_ render.neighbor
data modify storage yrh.map:_ render.neighbor.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"render.position.x","fallback":0},-1]}
data modify storage yrh.map:_ render.neighbor.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"render.position.z","fallback":0},1]}
data modify storage yrh.map:_ render.neighbor.distance set value 2
function yrh.map:function/render/light_neighbor with storage yrh.map:_ render.neighbor
data modify storage yrh.map:_ render.neighbor.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"render.position.x","fallback":0},1]}
data modify storage yrh.map:_ render.neighbor.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"render.position.z","fallback":0},1]}
data modify storage yrh.map:_ render.neighbor.distance set value 2
function yrh.map:function/render/light_neighbor with storage yrh.map:_ render.neighbor
data modify storage yrh.map:_ render.neighbor.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"render.position.x","fallback":0},0]}
data modify storage yrh.map:_ render.neighbor.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"render.position.z","fallback":0},2]}
data modify storage yrh.map:_ render.neighbor.distance set value 2
function yrh.map:function/render/light_neighbor with storage yrh.map:_ render.neighbor
data modify storage yrh.map:_ sample.brightness set from storage yrh.map:_ render.max_light
function yrh.map:function/compute_brightness/root
