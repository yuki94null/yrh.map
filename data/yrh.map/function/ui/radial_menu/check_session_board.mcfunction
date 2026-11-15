$data modify storage yrh.map:ui session set value {player:$(UUID)}
$data modify storage yrh.map:ui session.anchor set from storage yrh.map:ui player_data."$(UUID)".radial_menu
execute unless data storage yrh.map:ui session.anchor run return 0
return run function yrh.map:ui/radial_menu/check_board with storage yrh.map:ui session
