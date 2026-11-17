#|| --- CrossRefs --- ||#
#|| @yrh.map:load
#||
#||    # tags/function
#||        @minecraft:load
#||
#|| ------ End ------ ||#

scoreboard objectives add yrh_map_tmp dummy
scoreboard objectives add yrh_map_ax dummy
scoreboard objectives add yrh_map_az dummy
scoreboard objectives add yrh_map_tx dummy
scoreboard objectives add yrh_map_tz dummy
scoreboard players set #sixteen yrh_map_tmp 16
data modify storage yrh.map:_ worldmap.blank_tile_text set value {text:"■■■■■■■■■■■■■■■■\n■■■■■■■■■■■■■■■■\n■■■■■■■■■■■■■■■■\n■■■■■■■■■■■■■■■■\n■■■■■■■■■■■■■■■■\n■■■■■■■■■■■■■■■■\n■■■■■■■■■■■■■■■■\n■■■■■■■■■■■■■■■■\n■■■■■■■■■■■■■■■■\n■■■■■■■■■■■■■■■■\n■■■■■■■■■■■■■■■■\n■■■■■■■■■■■■■■■■\n■■■■■■■■■■■■■■■■\n■■■■■■■■■■■■■■■■\n■■■■■■■■■■■■■■■■\n■■■■■■■■■■■■■■■■",font:"yrh.map:map_pixel",color:"#000000",shadow_color:0}
scoreboard players add #terrain_revision yrh_map_tmp 0
execute if data storage yrh.map:_ worldmap.active_job{phase:"scan"} run data remove storage yrh.map:_ worldmap.active_job
execute if data storage yrh.map:_ worldmap.active_job{phase:"bake"} run data remove storage yrh.map:_ worldmap.active_job
execute unless data storage yrh.map:worldmap_text chunks run data modify storage yrh.map:worldmap_text chunks set value {}
execute in minecraft:overworld as @e[type=minecraft:text_display,tag=yrh.map.worldmap_chunk_display,nbt={see_through:1b}] run data modify entity @s see_through set value 0b
execute in minecraft:overworld as @e[type=minecraft:text_display,tag=yrh.map.pan_label,nbt={see_through:1b}] run data modify entity @s see_through set value 0b
execute in minecraft:overworld as @e[type=minecraft:text_display,tag=yrh.map.worldmap_preview,nbt={see_through:1b}] run data modify entity @s see_through set value 0b
execute in minecraft:overworld as @e[type=minecraft:text_display,tag=yrh.map.worldmap_anchor_display,nbt={see_through:1b}] run data modify entity @s see_through set value 0b
scoreboard objectives add yrh_map_hx dummy
scoreboard objectives add yrh_map_hz dummy
scoreboard objectives add yrh_map_scan_i dummy
data modify storage yrh.map:_ terrain.scan_offsets set value [{x:0,z:0,interval:200},{x:-16,z:0,interval:1200},{x:0,z:-16,interval:1200},{x:0,z:16,interval:1200},{x:16,z:0,interval:1200},{x:-16,z:-16,interval:1200},{x:-16,z:16,interval:1200},{x:16,z:-16,interval:1200},{x:16,z:16,interval:1200},{x:-32,z:0,interval:3600},{x:0,z:-32,interval:3600},{x:0,z:32,interval:3600},{x:32,z:0,interval:3600},{x:-32,z:-16,interval:3600},{x:-32,z:16,interval:3600},{x:-16,z:-32,interval:3600},{x:-16,z:32,interval:3600},{x:16,z:-32,interval:3600},{x:16,z:32,interval:3600},{x:32,z:-16,interval:3600},{x:32,z:16,interval:3600},{x:-32,z:-32,interval:3600},{x:-32,z:32,interval:3600},{x:32,z:-32,interval:3600},{x:32,z:32,interval:3600},{x:-48,z:0,interval:3600},{x:0,z:-48,interval:3600},{x:0,z:48,interval:3600},{x:48,z:0,interval:3600},{x:-48,z:-16,interval:3600},{x:-48,z:16,interval:3600},{x:-16,z:-48,interval:3600},{x:-16,z:48,interval:3600},{x:16,z:-48,interval:3600},{x:16,z:48,interval:3600},{x:48,z:-16,interval:3600},{x:48,z:16,interval:3600},{x:-48,z:-32,interval:3600},{x:-48,z:32,interval:3600},{x:-32,z:-48,interval:3600},{x:-32,z:48,interval:3600},{x:32,z:-48,interval:3600},{x:32,z:48,interval:3600},{x:48,z:-32,interval:3600},{x:48,z:32,interval:3600},{x:-48,z:-48,interval:3600},{x:-48,z:48,interval:3600},{x:48,z:-48,interval:3600},{x:48,z:48,interval:3600},{x:-64,z:0,interval:3600},{x:0,z:-64,interval:3600},{x:0,z:64,interval:3600},{x:64,z:0,interval:3600},{x:-64,z:-16,interval:3600},{x:-64,z:16,interval:3600},{x:-16,z:-64,interval:3600},{x:-16,z:64,interval:3600},{x:16,z:-64,interval:3600},{x:16,z:64,interval:3600},{x:64,z:-16,interval:3600},{x:64,z:16,interval:3600},{x:-64,z:-32,interval:3600},{x:-64,z:32,interval:3600},{x:-32,z:-64,interval:3600},{x:-32,z:64,interval:3600},{x:32,z:-64,interval:3600},{x:32,z:64,interval:3600},{x:64,z:-32,interval:3600},{x:64,z:32,interval:3600},{x:-64,z:-48,interval:3600},{x:-64,z:48,interval:3600},{x:-48,z:-64,interval:3600},{x:-48,z:64,interval:3600},{x:48,z:-64,interval:3600},{x:48,z:64,interval:3600},{x:64,z:-48,interval:3600},{x:64,z:48,interval:3600},{x:-64,z:-64,interval:3600},{x:-64,z:64,interval:3600},{x:64,z:-64,interval:3600},{x:64,z:64,interval:3600},{x:-80,z:0,interval:3600},{x:0,z:-80,interval:3600},{x:0,z:80,interval:3600},{x:80,z:0,interval:3600},{x:-80,z:-16,interval:3600},{x:-80,z:16,interval:3600},{x:-16,z:-80,interval:3600},{x:-16,z:80,interval:3600},{x:16,z:-80,interval:3600},{x:16,z:80,interval:3600},{x:80,z:-16,interval:3600},{x:80,z:16,interval:3600},{x:-80,z:-32,interval:3600},{x:-80,z:32,interval:3600},{x:-32,z:-80,interval:3600},{x:-32,z:80,interval:3600},{x:32,z:-80,interval:3600},{x:32,z:80,interval:3600},{x:80,z:-32,interval:3600},{x:80,z:32,interval:3600},{x:-80,z:-48,interval:3600},{x:-80,z:48,interval:3600},{x:-48,z:-80,interval:3600},{x:-48,z:80,interval:3600},{x:48,z:-80,interval:3600},{x:48,z:80,interval:3600},{x:80,z:-48,interval:3600},{x:80,z:48,interval:3600},{x:-80,z:-64,interval:3600},{x:-80,z:64,interval:3600},{x:-64,z:-80,interval:3600},{x:-64,z:80,interval:3600},{x:64,z:-80,interval:3600},{x:64,z:80,interval:3600},{x:80,z:-64,interval:3600},{x:80,z:64,interval:3600},{x:-80,z:-80,interval:3600},{x:-80,z:80,interval:3600},{x:80,z:-80,interval:3600},{x:80,z:80,interval:3600},{x:-96,z:0,interval:3600},{x:0,z:-96,interval:3600},{x:0,z:96,interval:3600},{x:96,z:0,interval:3600},{x:-96,z:-16,interval:3600},{x:-96,z:16,interval:3600},{x:-16,z:-96,interval:3600},{x:-16,z:96,interval:3600},{x:16,z:-96,interval:3600},{x:16,z:96,interval:3600},{x:96,z:-16,interval:3600},{x:96,z:16,interval:3600},{x:-96,z:-32,interval:3600},{x:-96,z:32,interval:3600},{x:-32,z:-96,interval:3600},{x:-32,z:96,interval:3600},{x:32,z:-96,interval:3600},{x:32,z:96,interval:3600},{x:96,z:-32,interval:3600},{x:96,z:32,interval:3600},{x:-96,z:-48,interval:3600},{x:-96,z:48,interval:3600},{x:-48,z:-96,interval:3600},{x:-48,z:96,interval:3600},{x:48,z:-96,interval:3600},{x:48,z:96,interval:3600},{x:96,z:-48,interval:3600},{x:96,z:48,interval:3600},{x:-96,z:-64,interval:3600},{x:-96,z:64,interval:3600},{x:-64,z:-96,interval:3600},{x:-64,z:96,interval:3600},{x:64,z:-96,interval:3600},{x:64,z:96,interval:3600},{x:96,z:-64,interval:3600},{x:96,z:64,interval:3600},{x:-96,z:-80,interval:3600},{x:-96,z:80,interval:3600},{x:-80,z:-96,interval:3600},{x:-80,z:96,interval:3600},{x:80,z:-96,interval:3600},{x:80,z:96,interval:3600},{x:96,z:-80,interval:3600},{x:96,z:80,interval:3600},{x:-96,z:-96,interval:3600},{x:-96,z:96,interval:3600},{x:96,z:-96,interval:3600},{x:96,z:96,interval:3600}]
scoreboard objectives add yrh_map_id dummy
scoreboard objectives add yrh_map_wp_public dummy
scoreboard objectives add yrh_map_use minecraft.used:minecraft.carrot_on_a_stick
execute if data storage yrh.map:_ worldmap.active_job.map_id[0] run data remove storage yrh.map:_ worldmap.active_job

function yrh.map:function/worldmap/waypoint/appearance/initialize_palette
function yrh.map:ui/load
execute in minecraft:overworld as @e[type=minecraft:interaction,tag=yrh.map.worldmap_anchor] if data entity @s data.yrhmap.Owner run tag @s add yrh.map.waypoint_visuals_pending

# Keep map text fully lit even when its entity origin intersects a block.
execute in minecraft:overworld as @e[type=minecraft:interaction,tag=yrh.map.worldmap_anchor,tag=!yrh.map.rim_buttons_v31,scores={yrh_map_id=1..}] at @s if data entity @s data.yrhmap.Owner run function yrh.map:function/worldmap/migrate_rim_buttons
execute in minecraft:overworld as @e[type=minecraft:text_display,tag=yrh.map.worldmap_chunk_display] run data modify entity @s brightness set value {block:15,sky:15}
execute in minecraft:overworld as @e[type=minecraft:text_display,tag=yrh.map.pan_label] run data modify entity @s brightness set value {block:15,sky:15}
execute in minecraft:overworld as @e[type=minecraft:text_display,tag=yrh.map.worldmap_preview] run data modify entity @s brightness set value {block:15,sky:15}
execute in minecraft:overworld as @e[type=minecraft:text_display,tag=yrh.map.worldmap_anchor_display] run data modify entity @s brightness set value {block:15,sky:15}

# Discard click records left over from the tick-based button handlers.
execute in minecraft:overworld as @e[type=minecraft:interaction,tag=yrh.map.pan_control] if data entity @s interaction run data remove entity @s interaction
execute in minecraft:overworld as @e[type=minecraft:interaction,tag=yrh.map.pan_control] if data entity @s attack run data remove entity @s attack
execute in minecraft:overworld as @e[type=minecraft:interaction,tag=yrh.map.waypoint_placement] run data modify entity @s height set value 0.01f

scoreboard objectives add yrh_map_floor_wait dummy
team add yrh_map_floor
team modify yrh_map_floor collisionRule never
execute in minecraft:overworld as @e[type=minecraft:interaction,tag=yrh.map.worldmap_anchor,tag=!yrh.map.platform_v1,scores={yrh_map_id=1..}] at @s run function yrh.map:function/worldmap/platform/migrate
execute in minecraft:overworld as @e[type=minecraft:interaction,tag=yrh.map.worldmap_anchor,tag=yrh.map.platform_v1,tag=!yrh.map.floor_height_v2,scores={yrh_map_id=1..}] at @s run function yrh.map:function/worldmap/platform/update_height
execute in minecraft:overworld as @e[type=minecraft:interaction,tag=yrh.map.worldmap_anchor,tag=!yrh.map.platform_v3,scores={yrh_map_id=1..}] at @s run function yrh.map:function/worldmap/platform/update_footprint
execute in minecraft:overworld as @e[type=minecraft:interaction,tag=yrh.map.worldmap_anchor,tag=!yrh.map.backing_v9,scores={yrh_map_id=1..}] run function yrh.map:function/worldmap/update_map_backing
execute in minecraft:overworld as @e[type=minecraft:interaction,tag=yrh.map.worldmap_anchor,scores={yrh_map_id=1..}] if data entity @s data.yrhmap{Pinned:1b} run function yrh.map:function/worldmap/refresh_fixed_indicator
