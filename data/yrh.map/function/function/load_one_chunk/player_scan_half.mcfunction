data modify storage yrh.map:_ mcr.posX set from storage yrh.map:_ terrain.scan_pos.x
$data modify storage yrh.map:_ mcr.posZ set compute default integer {type:"minecraft:add",inputs:[{type:"minecraft:storage",storage:"yrh.map:_",path:"terrain.scan_pos.z"},$(z0)]}
$execute positioned ~ ~ ~$(z0) run function yrh.map:function/load_one_chunk/save_scan_cell
$execute positioned ~ ~ ~$(z1) run function yrh.map:function/load_one_chunk/save_scan_cell
$execute positioned ~ ~ ~$(z2) run function yrh.map:function/load_one_chunk/save_scan_cell
$execute positioned ~ ~ ~$(z3) run function yrh.map:function/load_one_chunk/save_scan_cell
$execute positioned ~ ~ ~$(z4) run function yrh.map:function/load_one_chunk/save_scan_cell
$execute positioned ~ ~ ~$(z5) run function yrh.map:function/load_one_chunk/save_scan_cell
$execute positioned ~ ~ ~$(z6) run function yrh.map:function/load_one_chunk/save_scan_cell
$execute positioned ~ ~ ~$(z7) run function yrh.map:function/load_one_chunk/save_scan_cell
