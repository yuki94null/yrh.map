function yrh.map:function/worldmap/remove_owned_map
$execute unless entity @e[type=minecraft:interaction,tag=yrh.map.worldmap_anchor,scores={yrh_map_id=$(map_id)},limit=1] run return 1
$title @a[nbt={UUID:$(player)},limit=1] actionbar {translate:"yrh.map.remove_unloaded",fallback:"地図の周辺が未ロードのため撤去できません",color:"red"}
