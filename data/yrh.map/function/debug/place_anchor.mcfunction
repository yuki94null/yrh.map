# Create one prototype world-map anchor at the player's current chunk.
execute unless dimension minecraft:overworld run return 0
execute as @e[type=minecraft:interaction,tag=yrh.map.worldmap_anchor,scores={yrh_map_id=1..}] at @s run function yrh.map:function/worldmap/remove_owned_map
execute as @e[tag=yrh.map.map_backing] unless score @s yrh_map_id matches 1.. run kill @s
execute as @e[type=minecraft:interaction,tag=yrh.map.pan_control] unless score @s yrh_map_id matches 1.. run kill @s
execute as @e[type=minecraft:text_display,tag=yrh.map.pan_label] unless score @s yrh_map_id matches 1.. run kill @s
execute as @e[type=minecraft:text_display,tag=yrh.map.worldmap_chunk_display] unless score @s yrh_map_id matches 1.. run kill @s
execute as @e[type=minecraft:text_display,tag=yrh.map.worldmap_anchor_display] unless score @s yrh_map_id matches 1.. run kill @s
execute as @e[type=minecraft:text_display,tag=yrh.map.worldmap_preview] unless score @s yrh_map_id matches 1.. run kill @s
execute as @e[type=minecraft:interaction,tag=yrh.map.worldmap_anchor] unless score @s yrh_map_id matches 1.. run kill @s
function yrh.map:debug/add_anchor
