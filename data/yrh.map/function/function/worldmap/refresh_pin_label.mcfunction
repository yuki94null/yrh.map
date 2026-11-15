execute store result storage yrh.map:_ worldmap.pin.map_id int 1 run scoreboard players get @s yrh_map_id
data modify storage yrh.map:_ worldmap.pin.label set value {text:"固定 OFF",color:"white",shadow_color:0}
execute if data entity @s data.yrhmap{Pinned:1b} run data modify storage yrh.map:_ worldmap.pin.label set value {text:"固定 ON",color:"green",shadow_color:0}
function yrh.map:function/worldmap/update_pin_label with storage yrh.map:_ worldmap.pin
