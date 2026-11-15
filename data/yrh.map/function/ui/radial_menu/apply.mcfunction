$execute as @e[type=minecraft:interaction,tag=yrh.map.worldmap_anchor,distance=..25,nbt={UUID:$(anchor),data:{yrhmap:{Owner:$(player)}}},limit=1] at @s run function yrh.map:ui/radial_menu/dispatch
