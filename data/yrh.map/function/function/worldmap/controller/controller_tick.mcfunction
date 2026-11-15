scoreboard players add #controller_tick yrh_map_tmp 1
execute unless score #controller_tick yrh_map_tmp matches 2.. run return 0
scoreboard players set #controller_tick yrh_map_tmp 0
execute in minecraft:overworld as @e[type=minecraft:interaction,tag=yrh.map.worldmap_anchor,scores={yrh_map_id=1..}] at @s if data entity @s data.yrhmap.Owner run function yrh.map:function/worldmap/controller/update_controller
