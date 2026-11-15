data modify storage yrh.map:_ worldmap.click set value {}
execute if data storage yrh.map:_ worldmap.button_event{sneaking:1b} run data modify storage yrh.map:_ worldmap.click.sneaking set value 1b
$data modify storage yrh.map:_ worldmap.click.player set from entity @s $(event).player
$data remove entity @s $(event)
execute unless score @s yrh_map_id matches 1.. run return 0
execute unless data storage yrh.map:_ worldmap.click.player run return 0
execute store result storage yrh.map:_ worldmap.click.map_id int 1 run scoreboard players get @s yrh_map_id
$function yrh.map:function/worldmap/input/dispatch_$(side) with storage yrh.map:_ worldmap.click
