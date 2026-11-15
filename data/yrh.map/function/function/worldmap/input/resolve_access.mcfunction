
$execute as @e[type=minecraft:interaction,tag=yrh.map.worldmap_anchor,scores={yrh_map_id=$(map_id)},limit=1] run return run function yrh.map:function/worldmap/input/access_for_player {player:$(player)}
return 0
