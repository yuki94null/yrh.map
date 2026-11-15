data modify storage yrh.map:_ worldmap.controller set value {map_id:0}
$data modify storage yrh.map:_ worldmap.controller.anchor set from storage yrh.map:map_ids players.p_$(u0)_$(u1)_$(u2)_$(u3).anchor
execute unless data storage yrh.map:_ worldmap.controller.anchor run return run function yrh.map:function/worldmap/controller/controller_unavailable
function yrh.map:function/worldmap/controller/resolve_controller with storage yrh.map:_ worldmap.controller
