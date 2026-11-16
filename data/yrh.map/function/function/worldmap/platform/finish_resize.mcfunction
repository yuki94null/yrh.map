$execute as @e[type=minecraft:happy_ghast,tag=yrh.map.platform,tag=!yrh.map.platform_replaced,tag=!yrh.map.platform_resize_kept,scores={yrh_map_id=$(map_id)}] run function yrh.map:function/worldmap/platform/hold_for_replacement
$tag @e[type=minecraft:happy_ghast,tag=yrh.map.platform_resize_kept,scores={yrh_map_id=$(map_id)}] remove yrh.map.platform_resize_kept
