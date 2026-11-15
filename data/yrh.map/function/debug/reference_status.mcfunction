data modify storage yrh.map:_ worldmap.debug.anchors set value []
execute as @e[type=minecraft:interaction,tag=yrh.map.worldmap_anchor] run function yrh.map:function/worldmap/store_anchor_status
tellraw @s [{"text":"World map references: "},{"nbt":"worldmap.debug.anchors","storage":"yrh.map:_","interpret":false}]
