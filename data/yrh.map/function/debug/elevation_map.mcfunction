execute unless entity @s[type=minecraft:player] run return 0
execute at @s unless dimension minecraft:overworld run return run tellraw @s {text:"標高マップはオーバーワールドで表示できます。",color:"red"}
data modify storage yrh.map:elevation_debug args set value {}
execute store result score #elev_x yrh_map_tmp run data get entity @s Pos[0]
execute store result score #elev_z yrh_map_tmp run data get entity @s Pos[2]
scoreboard players operation #elev_local yrh_map_tmp = #elev_x yrh_map_tmp
scoreboard players operation #elev_local yrh_map_tmp %= #sixteen yrh_map_tmp
execute if score #elev_local yrh_map_tmp matches ..-1 run scoreboard players add #elev_local yrh_map_tmp 16
scoreboard players operation #elev_x yrh_map_tmp -= #elev_local yrh_map_tmp
scoreboard players operation #elev_local yrh_map_tmp = #elev_z yrh_map_tmp
scoreboard players operation #elev_local yrh_map_tmp %= #sixteen yrh_map_tmp
execute if score #elev_local yrh_map_tmp matches ..-1 run scoreboard players add #elev_local yrh_map_tmp 16
scoreboard players operation #elev_z yrh_map_tmp -= #elev_local yrh_map_tmp
execute store result storage yrh.map:elevation_debug args.cx int 1 run scoreboard players get #elev_x yrh_map_tmp
execute store result storage yrh.map:elevation_debug args.cz int 1 run scoreboard players get #elev_z yrh_map_tmp
function yrh.map:debug/elevation/start with storage yrh.map:elevation_debug args
