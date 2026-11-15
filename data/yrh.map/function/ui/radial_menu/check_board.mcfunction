$execute as @e[type=minecraft:interaction,tag=yrh.map.worldmap_anchor,distance=..16,nbt={UUID:$(anchor),data:{yrhmap:{Owner:$(player)}}},limit=1] at @s run return run function yrh.map:ui/radial_menu/read_board_state
return 0
