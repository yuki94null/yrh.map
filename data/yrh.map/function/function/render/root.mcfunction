# Draw a 16x16 map from offset -8..7 around the player's floored block position.
function yrh.map:function/get_pos/root
data modify storage yrh.map:_ render set value {position:{}}
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-8]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-8]}
data modify storage yrh.map:_ render.position.i set value 0
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-7]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-8]}
data modify storage yrh.map:_ render.position.i set value 1
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-6]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-8]}
data modify storage yrh.map:_ render.position.i set value 2
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-5]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-8]}
data modify storage yrh.map:_ render.position.i set value 3
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-4]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-8]}
data modify storage yrh.map:_ render.position.i set value 4
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-3]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-8]}
data modify storage yrh.map:_ render.position.i set value 5
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-2]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-8]}
data modify storage yrh.map:_ render.position.i set value 6
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-1]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-8]}
data modify storage yrh.map:_ render.position.i set value 7
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},0]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-8]}
data modify storage yrh.map:_ render.position.i set value 8
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},1]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-8]}
data modify storage yrh.map:_ render.position.i set value 9
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},2]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-8]}
data modify storage yrh.map:_ render.position.i set value 10
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},3]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-8]}
data modify storage yrh.map:_ render.position.i set value 11
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},4]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-8]}
data modify storage yrh.map:_ render.position.i set value 12
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},5]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-8]}
data modify storage yrh.map:_ render.position.i set value 13
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},6]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-8]}
data modify storage yrh.map:_ render.position.i set value 14
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},7]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-8]}
data modify storage yrh.map:_ render.position.i set value 15
function yrh.map:function/render/cell with storage yrh.map:_ render.position
function yrh.map:function/render/show with storage yrh.map:_ render
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-8]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-7]}
data modify storage yrh.map:_ render.position.i set value 0
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-7]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-7]}
data modify storage yrh.map:_ render.position.i set value 1
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-6]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-7]}
data modify storage yrh.map:_ render.position.i set value 2
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-5]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-7]}
data modify storage yrh.map:_ render.position.i set value 3
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-4]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-7]}
data modify storage yrh.map:_ render.position.i set value 4
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-3]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-7]}
data modify storage yrh.map:_ render.position.i set value 5
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-2]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-7]}
data modify storage yrh.map:_ render.position.i set value 6
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-1]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-7]}
data modify storage yrh.map:_ render.position.i set value 7
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},0]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-7]}
data modify storage yrh.map:_ render.position.i set value 8
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},1]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-7]}
data modify storage yrh.map:_ render.position.i set value 9
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},2]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-7]}
data modify storage yrh.map:_ render.position.i set value 10
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},3]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-7]}
data modify storage yrh.map:_ render.position.i set value 11
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},4]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-7]}
data modify storage yrh.map:_ render.position.i set value 12
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},5]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-7]}
data modify storage yrh.map:_ render.position.i set value 13
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},6]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-7]}
data modify storage yrh.map:_ render.position.i set value 14
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},7]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-7]}
data modify storage yrh.map:_ render.position.i set value 15
function yrh.map:function/render/cell with storage yrh.map:_ render.position
function yrh.map:function/render/show with storage yrh.map:_ render
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-8]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-6]}
data modify storage yrh.map:_ render.position.i set value 0
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-7]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-6]}
data modify storage yrh.map:_ render.position.i set value 1
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-6]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-6]}
data modify storage yrh.map:_ render.position.i set value 2
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-5]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-6]}
data modify storage yrh.map:_ render.position.i set value 3
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-4]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-6]}
data modify storage yrh.map:_ render.position.i set value 4
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-3]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-6]}
data modify storage yrh.map:_ render.position.i set value 5
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-2]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-6]}
data modify storage yrh.map:_ render.position.i set value 6
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-1]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-6]}
data modify storage yrh.map:_ render.position.i set value 7
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},0]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-6]}
data modify storage yrh.map:_ render.position.i set value 8
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},1]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-6]}
data modify storage yrh.map:_ render.position.i set value 9
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},2]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-6]}
data modify storage yrh.map:_ render.position.i set value 10
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},3]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-6]}
data modify storage yrh.map:_ render.position.i set value 11
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},4]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-6]}
data modify storage yrh.map:_ render.position.i set value 12
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},5]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-6]}
data modify storage yrh.map:_ render.position.i set value 13
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},6]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-6]}
data modify storage yrh.map:_ render.position.i set value 14
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},7]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-6]}
data modify storage yrh.map:_ render.position.i set value 15
function yrh.map:function/render/cell with storage yrh.map:_ render.position
function yrh.map:function/render/show with storage yrh.map:_ render
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-8]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-5]}
data modify storage yrh.map:_ render.position.i set value 0
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-7]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-5]}
data modify storage yrh.map:_ render.position.i set value 1
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-6]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-5]}
data modify storage yrh.map:_ render.position.i set value 2
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-5]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-5]}
data modify storage yrh.map:_ render.position.i set value 3
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-4]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-5]}
data modify storage yrh.map:_ render.position.i set value 4
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-3]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-5]}
data modify storage yrh.map:_ render.position.i set value 5
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-2]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-5]}
data modify storage yrh.map:_ render.position.i set value 6
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-1]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-5]}
data modify storage yrh.map:_ render.position.i set value 7
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},0]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-5]}
data modify storage yrh.map:_ render.position.i set value 8
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},1]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-5]}
data modify storage yrh.map:_ render.position.i set value 9
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},2]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-5]}
data modify storage yrh.map:_ render.position.i set value 10
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},3]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-5]}
data modify storage yrh.map:_ render.position.i set value 11
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},4]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-5]}
data modify storage yrh.map:_ render.position.i set value 12
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},5]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-5]}
data modify storage yrh.map:_ render.position.i set value 13
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},6]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-5]}
data modify storage yrh.map:_ render.position.i set value 14
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},7]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-5]}
data modify storage yrh.map:_ render.position.i set value 15
function yrh.map:function/render/cell with storage yrh.map:_ render.position
function yrh.map:function/render/show with storage yrh.map:_ render
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-8]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-4]}
data modify storage yrh.map:_ render.position.i set value 0
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-7]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-4]}
data modify storage yrh.map:_ render.position.i set value 1
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-6]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-4]}
data modify storage yrh.map:_ render.position.i set value 2
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-5]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-4]}
data modify storage yrh.map:_ render.position.i set value 3
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-4]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-4]}
data modify storage yrh.map:_ render.position.i set value 4
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-3]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-4]}
data modify storage yrh.map:_ render.position.i set value 5
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-2]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-4]}
data modify storage yrh.map:_ render.position.i set value 6
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-1]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-4]}
data modify storage yrh.map:_ render.position.i set value 7
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},0]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-4]}
data modify storage yrh.map:_ render.position.i set value 8
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},1]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-4]}
data modify storage yrh.map:_ render.position.i set value 9
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},2]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-4]}
data modify storage yrh.map:_ render.position.i set value 10
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},3]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-4]}
data modify storage yrh.map:_ render.position.i set value 11
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},4]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-4]}
data modify storage yrh.map:_ render.position.i set value 12
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},5]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-4]}
data modify storage yrh.map:_ render.position.i set value 13
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},6]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-4]}
data modify storage yrh.map:_ render.position.i set value 14
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},7]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-4]}
data modify storage yrh.map:_ render.position.i set value 15
function yrh.map:function/render/cell with storage yrh.map:_ render.position
function yrh.map:function/render/show with storage yrh.map:_ render
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-8]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-3]}
data modify storage yrh.map:_ render.position.i set value 0
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-7]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-3]}
data modify storage yrh.map:_ render.position.i set value 1
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-6]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-3]}
data modify storage yrh.map:_ render.position.i set value 2
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-5]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-3]}
data modify storage yrh.map:_ render.position.i set value 3
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-4]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-3]}
data modify storage yrh.map:_ render.position.i set value 4
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-3]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-3]}
data modify storage yrh.map:_ render.position.i set value 5
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-2]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-3]}
data modify storage yrh.map:_ render.position.i set value 6
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-1]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-3]}
data modify storage yrh.map:_ render.position.i set value 7
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},0]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-3]}
data modify storage yrh.map:_ render.position.i set value 8
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},1]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-3]}
data modify storage yrh.map:_ render.position.i set value 9
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},2]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-3]}
data modify storage yrh.map:_ render.position.i set value 10
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},3]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-3]}
data modify storage yrh.map:_ render.position.i set value 11
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},4]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-3]}
data modify storage yrh.map:_ render.position.i set value 12
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},5]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-3]}
data modify storage yrh.map:_ render.position.i set value 13
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},6]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-3]}
data modify storage yrh.map:_ render.position.i set value 14
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},7]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-3]}
data modify storage yrh.map:_ render.position.i set value 15
function yrh.map:function/render/cell with storage yrh.map:_ render.position
function yrh.map:function/render/show with storage yrh.map:_ render
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-8]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-2]}
data modify storage yrh.map:_ render.position.i set value 0
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-7]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-2]}
data modify storage yrh.map:_ render.position.i set value 1
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-6]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-2]}
data modify storage yrh.map:_ render.position.i set value 2
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-5]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-2]}
data modify storage yrh.map:_ render.position.i set value 3
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-4]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-2]}
data modify storage yrh.map:_ render.position.i set value 4
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-3]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-2]}
data modify storage yrh.map:_ render.position.i set value 5
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-2]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-2]}
data modify storage yrh.map:_ render.position.i set value 6
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-1]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-2]}
data modify storage yrh.map:_ render.position.i set value 7
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},0]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-2]}
data modify storage yrh.map:_ render.position.i set value 8
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},1]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-2]}
data modify storage yrh.map:_ render.position.i set value 9
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},2]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-2]}
data modify storage yrh.map:_ render.position.i set value 10
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},3]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-2]}
data modify storage yrh.map:_ render.position.i set value 11
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},4]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-2]}
data modify storage yrh.map:_ render.position.i set value 12
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},5]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-2]}
data modify storage yrh.map:_ render.position.i set value 13
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},6]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-2]}
data modify storage yrh.map:_ render.position.i set value 14
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},7]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-2]}
data modify storage yrh.map:_ render.position.i set value 15
function yrh.map:function/render/cell with storage yrh.map:_ render.position
function yrh.map:function/render/show with storage yrh.map:_ render
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-8]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-1]}
data modify storage yrh.map:_ render.position.i set value 0
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-7]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-1]}
data modify storage yrh.map:_ render.position.i set value 1
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-6]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-1]}
data modify storage yrh.map:_ render.position.i set value 2
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-5]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-1]}
data modify storage yrh.map:_ render.position.i set value 3
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-4]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-1]}
data modify storage yrh.map:_ render.position.i set value 4
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-3]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-1]}
data modify storage yrh.map:_ render.position.i set value 5
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-2]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-1]}
data modify storage yrh.map:_ render.position.i set value 6
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-1]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-1]}
data modify storage yrh.map:_ render.position.i set value 7
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},0]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-1]}
data modify storage yrh.map:_ render.position.i set value 8
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},1]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-1]}
data modify storage yrh.map:_ render.position.i set value 9
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},2]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-1]}
data modify storage yrh.map:_ render.position.i set value 10
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},3]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-1]}
data modify storage yrh.map:_ render.position.i set value 11
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},4]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-1]}
data modify storage yrh.map:_ render.position.i set value 12
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},5]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-1]}
data modify storage yrh.map:_ render.position.i set value 13
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},6]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-1]}
data modify storage yrh.map:_ render.position.i set value 14
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},7]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},-1]}
data modify storage yrh.map:_ render.position.i set value 15
function yrh.map:function/render/cell with storage yrh.map:_ render.position
function yrh.map:function/render/show with storage yrh.map:_ render
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-8]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},0]}
data modify storage yrh.map:_ render.position.i set value 0
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-7]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},0]}
data modify storage yrh.map:_ render.position.i set value 1
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-6]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},0]}
data modify storage yrh.map:_ render.position.i set value 2
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-5]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},0]}
data modify storage yrh.map:_ render.position.i set value 3
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-4]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},0]}
data modify storage yrh.map:_ render.position.i set value 4
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-3]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},0]}
data modify storage yrh.map:_ render.position.i set value 5
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-2]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},0]}
data modify storage yrh.map:_ render.position.i set value 6
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-1]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},0]}
data modify storage yrh.map:_ render.position.i set value 7
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},0]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},0]}
data modify storage yrh.map:_ render.position.i set value 8
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},1]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},0]}
data modify storage yrh.map:_ render.position.i set value 9
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},2]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},0]}
data modify storage yrh.map:_ render.position.i set value 10
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},3]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},0]}
data modify storage yrh.map:_ render.position.i set value 11
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},4]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},0]}
data modify storage yrh.map:_ render.position.i set value 12
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},5]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},0]}
data modify storage yrh.map:_ render.position.i set value 13
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},6]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},0]}
data modify storage yrh.map:_ render.position.i set value 14
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},7]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},0]}
data modify storage yrh.map:_ render.position.i set value 15
function yrh.map:function/render/cell with storage yrh.map:_ render.position
function yrh.map:function/render/show with storage yrh.map:_ render
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-8]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},1]}
data modify storage yrh.map:_ render.position.i set value 0
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-7]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},1]}
data modify storage yrh.map:_ render.position.i set value 1
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-6]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},1]}
data modify storage yrh.map:_ render.position.i set value 2
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-5]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},1]}
data modify storage yrh.map:_ render.position.i set value 3
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-4]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},1]}
data modify storage yrh.map:_ render.position.i set value 4
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-3]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},1]}
data modify storage yrh.map:_ render.position.i set value 5
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-2]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},1]}
data modify storage yrh.map:_ render.position.i set value 6
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-1]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},1]}
data modify storage yrh.map:_ render.position.i set value 7
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},0]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},1]}
data modify storage yrh.map:_ render.position.i set value 8
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},1]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},1]}
data modify storage yrh.map:_ render.position.i set value 9
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},2]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},1]}
data modify storage yrh.map:_ render.position.i set value 10
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},3]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},1]}
data modify storage yrh.map:_ render.position.i set value 11
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},4]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},1]}
data modify storage yrh.map:_ render.position.i set value 12
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},5]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},1]}
data modify storage yrh.map:_ render.position.i set value 13
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},6]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},1]}
data modify storage yrh.map:_ render.position.i set value 14
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},7]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},1]}
data modify storage yrh.map:_ render.position.i set value 15
function yrh.map:function/render/cell with storage yrh.map:_ render.position
function yrh.map:function/render/show with storage yrh.map:_ render
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-8]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},2]}
data modify storage yrh.map:_ render.position.i set value 0
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-7]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},2]}
data modify storage yrh.map:_ render.position.i set value 1
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-6]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},2]}
data modify storage yrh.map:_ render.position.i set value 2
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-5]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},2]}
data modify storage yrh.map:_ render.position.i set value 3
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-4]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},2]}
data modify storage yrh.map:_ render.position.i set value 4
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-3]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},2]}
data modify storage yrh.map:_ render.position.i set value 5
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-2]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},2]}
data modify storage yrh.map:_ render.position.i set value 6
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-1]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},2]}
data modify storage yrh.map:_ render.position.i set value 7
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},0]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},2]}
data modify storage yrh.map:_ render.position.i set value 8
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},1]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},2]}
data modify storage yrh.map:_ render.position.i set value 9
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},2]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},2]}
data modify storage yrh.map:_ render.position.i set value 10
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},3]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},2]}
data modify storage yrh.map:_ render.position.i set value 11
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},4]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},2]}
data modify storage yrh.map:_ render.position.i set value 12
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},5]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},2]}
data modify storage yrh.map:_ render.position.i set value 13
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},6]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},2]}
data modify storage yrh.map:_ render.position.i set value 14
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},7]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},2]}
data modify storage yrh.map:_ render.position.i set value 15
function yrh.map:function/render/cell with storage yrh.map:_ render.position
function yrh.map:function/render/show with storage yrh.map:_ render
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-8]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},3]}
data modify storage yrh.map:_ render.position.i set value 0
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-7]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},3]}
data modify storage yrh.map:_ render.position.i set value 1
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-6]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},3]}
data modify storage yrh.map:_ render.position.i set value 2
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-5]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},3]}
data modify storage yrh.map:_ render.position.i set value 3
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-4]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},3]}
data modify storage yrh.map:_ render.position.i set value 4
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-3]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},3]}
data modify storage yrh.map:_ render.position.i set value 5
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-2]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},3]}
data modify storage yrh.map:_ render.position.i set value 6
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-1]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},3]}
data modify storage yrh.map:_ render.position.i set value 7
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},0]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},3]}
data modify storage yrh.map:_ render.position.i set value 8
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},1]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},3]}
data modify storage yrh.map:_ render.position.i set value 9
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},2]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},3]}
data modify storage yrh.map:_ render.position.i set value 10
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},3]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},3]}
data modify storage yrh.map:_ render.position.i set value 11
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},4]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},3]}
data modify storage yrh.map:_ render.position.i set value 12
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},5]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},3]}
data modify storage yrh.map:_ render.position.i set value 13
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},6]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},3]}
data modify storage yrh.map:_ render.position.i set value 14
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},7]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},3]}
data modify storage yrh.map:_ render.position.i set value 15
function yrh.map:function/render/cell with storage yrh.map:_ render.position
function yrh.map:function/render/show with storage yrh.map:_ render
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-8]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},4]}
data modify storage yrh.map:_ render.position.i set value 0
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-7]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},4]}
data modify storage yrh.map:_ render.position.i set value 1
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-6]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},4]}
data modify storage yrh.map:_ render.position.i set value 2
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-5]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},4]}
data modify storage yrh.map:_ render.position.i set value 3
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-4]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},4]}
data modify storage yrh.map:_ render.position.i set value 4
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-3]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},4]}
data modify storage yrh.map:_ render.position.i set value 5
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-2]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},4]}
data modify storage yrh.map:_ render.position.i set value 6
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-1]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},4]}
data modify storage yrh.map:_ render.position.i set value 7
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},0]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},4]}
data modify storage yrh.map:_ render.position.i set value 8
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},1]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},4]}
data modify storage yrh.map:_ render.position.i set value 9
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},2]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},4]}
data modify storage yrh.map:_ render.position.i set value 10
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},3]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},4]}
data modify storage yrh.map:_ render.position.i set value 11
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},4]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},4]}
data modify storage yrh.map:_ render.position.i set value 12
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},5]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},4]}
data modify storage yrh.map:_ render.position.i set value 13
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},6]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},4]}
data modify storage yrh.map:_ render.position.i set value 14
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},7]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},4]}
data modify storage yrh.map:_ render.position.i set value 15
function yrh.map:function/render/cell with storage yrh.map:_ render.position
function yrh.map:function/render/show with storage yrh.map:_ render
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-8]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},5]}
data modify storage yrh.map:_ render.position.i set value 0
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-7]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},5]}
data modify storage yrh.map:_ render.position.i set value 1
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-6]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},5]}
data modify storage yrh.map:_ render.position.i set value 2
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-5]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},5]}
data modify storage yrh.map:_ render.position.i set value 3
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-4]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},5]}
data modify storage yrh.map:_ render.position.i set value 4
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-3]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},5]}
data modify storage yrh.map:_ render.position.i set value 5
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-2]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},5]}
data modify storage yrh.map:_ render.position.i set value 6
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-1]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},5]}
data modify storage yrh.map:_ render.position.i set value 7
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},0]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},5]}
data modify storage yrh.map:_ render.position.i set value 8
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},1]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},5]}
data modify storage yrh.map:_ render.position.i set value 9
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},2]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},5]}
data modify storage yrh.map:_ render.position.i set value 10
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},3]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},5]}
data modify storage yrh.map:_ render.position.i set value 11
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},4]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},5]}
data modify storage yrh.map:_ render.position.i set value 12
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},5]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},5]}
data modify storage yrh.map:_ render.position.i set value 13
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},6]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},5]}
data modify storage yrh.map:_ render.position.i set value 14
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},7]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},5]}
data modify storage yrh.map:_ render.position.i set value 15
function yrh.map:function/render/cell with storage yrh.map:_ render.position
function yrh.map:function/render/show with storage yrh.map:_ render
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-8]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},6]}
data modify storage yrh.map:_ render.position.i set value 0
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-7]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},6]}
data modify storage yrh.map:_ render.position.i set value 1
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-6]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},6]}
data modify storage yrh.map:_ render.position.i set value 2
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-5]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},6]}
data modify storage yrh.map:_ render.position.i set value 3
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-4]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},6]}
data modify storage yrh.map:_ render.position.i set value 4
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-3]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},6]}
data modify storage yrh.map:_ render.position.i set value 5
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-2]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},6]}
data modify storage yrh.map:_ render.position.i set value 6
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-1]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},6]}
data modify storage yrh.map:_ render.position.i set value 7
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},0]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},6]}
data modify storage yrh.map:_ render.position.i set value 8
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},1]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},6]}
data modify storage yrh.map:_ render.position.i set value 9
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},2]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},6]}
data modify storage yrh.map:_ render.position.i set value 10
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},3]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},6]}
data modify storage yrh.map:_ render.position.i set value 11
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},4]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},6]}
data modify storage yrh.map:_ render.position.i set value 12
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},5]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},6]}
data modify storage yrh.map:_ render.position.i set value 13
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},6]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},6]}
data modify storage yrh.map:_ render.position.i set value 14
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},7]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},6]}
data modify storage yrh.map:_ render.position.i set value 15
function yrh.map:function/render/cell with storage yrh.map:_ render.position
function yrh.map:function/render/show with storage yrh.map:_ render
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-8]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},7]}
data modify storage yrh.map:_ render.position.i set value 0
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-7]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},7]}
data modify storage yrh.map:_ render.position.i set value 1
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-6]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},7]}
data modify storage yrh.map:_ render.position.i set value 2
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-5]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},7]}
data modify storage yrh.map:_ render.position.i set value 3
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-4]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},7]}
data modify storage yrh.map:_ render.position.i set value 4
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-3]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},7]}
data modify storage yrh.map:_ render.position.i set value 5
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-2]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},7]}
data modify storage yrh.map:_ render.position.i set value 6
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},-1]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},7]}
data modify storage yrh.map:_ render.position.i set value 7
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},0]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},7]}
data modify storage yrh.map:_ render.position.i set value 8
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},1]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},7]}
data modify storage yrh.map:_ render.position.i set value 9
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},2]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},7]}
data modify storage yrh.map:_ render.position.i set value 10
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},3]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},7]}
data modify storage yrh.map:_ render.position.i set value 11
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},4]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},7]}
data modify storage yrh.map:_ render.position.i set value 12
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},5]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},7]}
data modify storage yrh.map:_ render.position.i set value 13
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},6]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},7]}
data modify storage yrh.map:_ render.position.i set value 14
function yrh.map:function/render/cell with storage yrh.map:_ render.position
data modify storage yrh.map:_ render.position.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.x","fallback":0},7]}
data modify storage yrh.map:_ render.position.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"tmp.z","fallback":0},7]}
data modify storage yrh.map:_ render.position.i set value 15
function yrh.map:function/render/cell with storage yrh.map:_ render.position
function yrh.map:function/render/show with storage yrh.map:_ render
