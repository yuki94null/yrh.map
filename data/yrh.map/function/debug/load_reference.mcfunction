# Rebuild the nearest map from saved terrain colors.
execute as @e[type=minecraft:interaction,tag=yrh.map.worldmap_anchor,sort=nearest,limit=1] at @s run function yrh.map:function/worldmap/load_reference
