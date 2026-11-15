$execute as @e[type=minecraft:interaction,tag=yrh.map.worldmap_anchor,scores={yrh_map_id=$(map_id)},limit=1] at @s if data entity @s data.yrhmap{Owner:$(player)} run return run function yrh.map:function/worldmap/remove_with_feedback {map_id:$(map_id),player:$(player)}
$title @a[nbt={UUID:$(player)},limit=1] actionbar {translate:"yrh.map.cannot_operate",fallback:"この地図は操作できません",color:"red"}
