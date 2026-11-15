$kill @e[tag=yrh.map.waypoint_marker,scores={yrh_map_id=$(map_id)}]
$kill @e[type=minecraft:item_display,tag=yrh.map.waypoint_part,scores={yrh_map_id=$(map_id)}]
$execute as @e[type=minecraft:happy_ghast,tag=yrh.map.platform,scores={yrh_map_id=$(map_id)}] at @s run function yrh.map:function/worldmap/platform/retire
$kill @e[tag=yrh.map.worldmap_chunk_display,scores={yrh_map_id=$(map_id)}]
$kill @e[tag=yrh.map.pan_control,scores={yrh_map_id=$(map_id)}]
$kill @e[tag=yrh.map.pan_label,scores={yrh_map_id=$(map_id)}]
$kill @e[tag=yrh.map.map_backing,scores={yrh_map_id=$(map_id)}]
$function yrh.map:function/worldmap/remove_fixed_indicator {map_id:$(map_id)}
$data remove storage yrh.map:map_ids used.m_$(map_id)
execute if data entity @s data.yrhmap.ItemId run function yrh.map:function/worldmap/release_bound_item
execute if data entity @s data.yrhmap.Owner run function yrh.map:function/worldmap/release_player_map
kill @s
