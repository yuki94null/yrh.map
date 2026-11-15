data modify storage yrh.map:_ worldmap.resize_slot set from storage yrh.map:_ worldmap.resize_owner
$data modify storage yrh.map:_ worldmap.resize_slot.x set value $(x)
$data modify storage yrh.map:_ worldmap.resize_slot.z set value $(z)
execute store result score #resize_slot_exists yrh_map_tmp run function yrh.map:function/worldmap/has_resize_tile with storage yrh.map:_ worldmap.resize_slot
execute if score #resize_slot_exists yrh_map_tmp matches 1 run return 0
$summon minecraft:text_display ~ ~ ~ {Tags:["yrh.map.worldmap_chunk_display","yrh.map.stationary_tiles","yrh.map.new_part","$(slot)"],billboard:"fixed",brightness:{block:15,sky:15},line_width:152,background:0,default_background:0b,shadow:0b,see_through:0b,alignment:"left",text_opacity:255,transformation:{left_rotation:[-0.7071068f,0f,0f,0.7071068f],right_rotation:[0f,0f,0f,1f],scale:[0.2777778f,0.25f,0.25f],translation:[$(x)f,1f,$(z)f]}}
$scoreboard players set @e[type=minecraft:text_display,tag=yrh.map.new_part,tag=$(slot),limit=1] yrh_map_tx $(x)
$scoreboard players set @e[type=minecraft:text_display,tag=yrh.map.new_part,tag=$(slot),limit=1] yrh_map_tz $(z)
$execute as @e[type=minecraft:text_display,tag=yrh.map.new_part,tag=$(slot),limit=1] run function yrh.map:function/worldmap/blank_pan_tile
$tag @e[type=minecraft:text_display,tag=yrh.map.new_part,tag=$(slot),limit=1] add yrh.map.worldmap_cache_pending
