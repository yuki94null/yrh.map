$data modify storage yrh.map:_ worldmap.button_event set value {event:"$(event)",side:"$(side)"}
data modify storage yrh.map:_ worldmap.button_event.player set from entity @s UUID
execute if predicate yrh.map:is_sneaking run data modify storage yrh.map:_ worldmap.button_event.sneaking set value 1b
execute at @s run function yrh.map:function/worldmap/input/find with storage yrh.map:_ worldmap.button_event
