execute if score #scale_count yrh_map_tmp matches 1.. run function yrh.map:function/worldmap/scaled/render/average/emit_average
execute if score #scale_count yrh_map_tmp matches 0 run data modify storage yrh.map:_ worldmap.text.extra append value {text:"■",font:"yrh.map:map_pixel",color:"#000000",shadow_color:0}
