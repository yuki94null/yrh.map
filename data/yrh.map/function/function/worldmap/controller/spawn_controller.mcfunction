function yrh.map:function/worldmap/controller/remove_controller with storage yrh.map:_ worldmap.controller_move
function yrh.map:function/worldmap/controller/create_controller_buttons
$scoreboard players set @e[tag=yrh.map.controller_new] yrh_map_id $(map_id)
tag @e[tag=yrh.map.controller_new] remove yrh.map.controller_new
$execute as @e[type=minecraft:interaction,tag=yrh.map.worldmap_anchor,scores={yrh_map_id=$(map_id)},limit=1] run function yrh.map:function/worldmap/controller/refresh_labels
return 1
