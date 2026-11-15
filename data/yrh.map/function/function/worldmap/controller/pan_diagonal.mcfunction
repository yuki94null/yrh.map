$execute as @e[type=minecraft:interaction,tag=yrh.map.worldmap_anchor,scores={yrh_map_id=$(map_id)},limit=1] at @s run function yrh.map:function/worldmap/controller/center_diagonal
