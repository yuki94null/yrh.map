summon minecraft:item_display ~ ~ ~ {Tags:["yrh.map.pin_author_lookup"]}
loot replace entity @e[type=minecraft:item_display,tag=yrh.map.pin_author_lookup,sort=nearest,limit=1] container.0 loot yrh.map:waypoint/author_head
data modify storage yrh.map:_ worldmap.pin_author set from entity @e[type=minecraft:item_display,tag=yrh.map.pin_author_lookup,sort=nearest,limit=1] item.components."minecraft:profile".name
kill @e[type=minecraft:item_display,tag=yrh.map.pin_author_lookup]
