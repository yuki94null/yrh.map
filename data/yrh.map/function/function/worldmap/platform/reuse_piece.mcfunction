$execute as @e[type=minecraft:happy_ghast,tag=yrh.map.platform,tag=!yrh.map.platform_replaced,tag=!yrh.map.platform_resize_kept,scores={yrh_map_id=$(map_id)},sort=nearest,limit=1] run return run function yrh.map:function/worldmap/platform/move_piece with storage yrh.map:_ worldmap.platform_resize
return 0
