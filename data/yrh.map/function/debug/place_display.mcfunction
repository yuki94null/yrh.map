# Replace the previous preview and place one display for the player's current chunk.
kill @e[type=minecraft:text_display,tag=yrh.map.worldmap_preview]
execute positioned ~-8 ~ ~-8 positioned ~72057594067927936 ~ ~72057594067927936 positioned ~-72057594067927936 ~ ~-72057594067927936 summon marker run function yrh.map:function/worldmap/place_preview
