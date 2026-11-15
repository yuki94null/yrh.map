$data modify storage yrh.map:ui session.anchor set from storage yrh.map:map_ids players.p_$(u0)_$(u1)_$(u2)_$(u3).anchor
execute unless data storage yrh.map:ui session.anchor run return 0
function yrh.map:ui/radial_menu/open with storage yrh.map:ui session
