$execute unless data storage yrh.map:surface chunks.c_$(cx)_$(cz).cells run return run tellraw @s {text:"このチャンクの標高データがありません。",color:"yellow"}
data modify storage yrh.map:elevation_debug values set value []
scoreboard players set #elev_min yrh_map_tmp 2147483647
scoreboard players set #elev_max yrh_map_tmp -2147483648
scoreboard players set #elev_row yrh_map_tmp 0
function yrh.map:debug/elevation/scan_row
execute if score #elev_min yrh_map_tmp matches 2147483647 run return run tellraw @s {text:"このチャンクに有効な標高データがありません。",color:"yellow"}
scoreboard players operation #elev_span yrh_map_tmp = #elev_max yrh_map_tmp
scoreboard players operation #elev_span yrh_map_tmp -= #elev_min yrh_map_tmp
scoreboard players set #elev_shades yrh_map_tmp 14
data modify storage yrh.map:elevation_debug palette set value [{text:"■",font:"yrh.map:map_pixel",color:"#000000",shadow_color:0},{text:"■",font:"yrh.map:map_pixel",color:"#111111",shadow_color:0},{text:"■",font:"yrh.map:map_pixel",color:"#222222",shadow_color:0},{text:"■",font:"yrh.map:map_pixel",color:"#333333",shadow_color:0},{text:"■",font:"yrh.map:map_pixel",color:"#444444",shadow_color:0},{text:"■",font:"yrh.map:map_pixel",color:"#555555",shadow_color:0},{text:"■",font:"yrh.map:map_pixel",color:"#666666",shadow_color:0},{text:"■",font:"yrh.map:map_pixel",color:"#777777",shadow_color:0},{text:"■",font:"yrh.map:map_pixel",color:"#888888",shadow_color:0},{text:"■",font:"yrh.map:map_pixel",color:"#999999",shadow_color:0},{text:"■",font:"yrh.map:map_pixel",color:"#aaaaaa",shadow_color:0},{text:"■",font:"yrh.map:map_pixel",color:"#bbbbbb",shadow_color:0},{text:"■",font:"yrh.map:map_pixel",color:"#cccccc",shadow_color:0},{text:"■",font:"yrh.map:map_pixel",color:"#dddddd",shadow_color:0},{text:"■",font:"yrh.map:map_pixel",color:"#eeeeee",shadow_color:0},{text:"■",font:"yrh.map:map_pixel",color:"#ffffff",shadow_color:0}]
$tellraw @s [{text:"標高マップ  X: $(cx)  Z: $(cz)  北↑  Y: "},{score:{name:"#elev_min",objective:"yrh_map_tmp"}},{text:"〜"},{score:{name:"#elev_max",objective:"yrh_map_tmp"}},{text:"  黒: 未取得",color:"gray"}]
scoreboard players set #elev_row yrh_map_tmp 0
scoreboard players set #elev_index yrh_map_tmp 0
function yrh.map:debug/elevation/draw_row
