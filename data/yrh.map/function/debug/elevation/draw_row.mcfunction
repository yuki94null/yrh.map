data modify storage yrh.map:elevation_debug row set value {text:"",extra:[]}
scoreboard players set #elev_column yrh_map_tmp 0
function yrh.map:debug/elevation/draw_cell
tellraw @s {nbt:"row",storage:"yrh.map:elevation_debug",interpret:true}
scoreboard players add #elev_row yrh_map_tmp 1
execute if score #elev_row yrh_map_tmp matches ..15 run function yrh.map:debug/elevation/draw_row
