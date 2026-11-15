
data modify storage yrh.map:_ worldmap.access_label set value {text:{text:"MAP PRIVATE",color:"white",shadow_color:0}}
execute if data entity @s data.yrhmap{Public:1b} run data modify storage yrh.map:_ worldmap.access_label.text set value {text:"MAP PUBLIC",color:"green",shadow_color:0}
execute store result storage yrh.map:_ worldmap.access_label.map_id int 1 run scoreboard players get @s yrh_map_id
function yrh.map:function/worldmap/access/apply_label with storage yrh.map:_ worldmap.access_label
