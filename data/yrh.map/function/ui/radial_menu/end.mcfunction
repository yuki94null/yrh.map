function yrh.map:ui/radial_menu/cancel
execute unless data storage yrh.map:ui session.anchor run return 0
function yrh.map:ui/radial_menu/select
execute unless data storage yrh.map:ui tmp.selected run return 0
data modify storage yrh.map:ui session merge from storage yrh.map:ui tmp.selected
function yrh.map:ui/radial_menu/apply with storage yrh.map:ui session
