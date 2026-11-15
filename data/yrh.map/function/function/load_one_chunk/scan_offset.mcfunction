$data modify storage yrh.map:_ terrain.selected_offset set from storage yrh.map:_ terrain.scan_offsets[$(index)]
function yrh.map:function/load_one_chunk/probe_scan_offset with storage yrh.map:_ terrain.selected_offset
