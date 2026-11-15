function yrh.map:function/worldmap/controller/remove_controller with storage yrh.map:_ worldmap.controller_move
function yrh.map:function/worldmap/controller/create_controller_buttons
$scoreboard players set @e[tag=yrh.map.controller_new] yrh_map_id $(map_id)
tag @e[tag=yrh.map.controller_new] remove yrh.map.controller_new
return 1
