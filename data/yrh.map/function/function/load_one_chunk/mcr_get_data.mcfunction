function yrh.map:function/get_positional_data/root
$data modify storage yrh.map:_ surface_access.pos set value {x:$(posX),z:$(posZ)}
function yrh.map:function/load_one_chunk/resolve_surface_cell
function yrh.map:function/load_one_chunk/write_surface_cell with storage yrh.map:_ surface_access.pos
