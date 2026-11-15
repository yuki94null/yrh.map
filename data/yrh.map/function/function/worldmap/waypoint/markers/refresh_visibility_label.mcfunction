data modify storage yrh.map:_ worldmap.marker_setting set value {text:{text:"OTHERS: ON",color:"white",shadow_color:0}}
execute if data entity @s data.yrhmap{HideOtherWaypoints:1b} run data modify storage yrh.map:_ worldmap.marker_setting.text.text set value "OTHERS: OFF"
execute store result storage yrh.map:_ worldmap.marker_setting.map_id int 1 run scoreboard players get @s yrh_map_id
function yrh.map:function/worldmap/waypoint/markers/show_visibility_label with storage yrh.map:_ worldmap.marker_setting
