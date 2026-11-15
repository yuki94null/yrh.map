scoreboard players set #resize_next yrh_map_tmp 5
execute if predicate yrh.map:is_sneaking run scoreboard players set #resize_next yrh_map_tmp 11
scoreboard players operation #requested_size yrh_map_tmp = #resize_next yrh_map_tmp
execute if score #requested_size yrh_map_tmp matches 5 positioned ~ ~0.001 ~-0.5 align xyz run function yrh.map:function/worldmap/check_space_5
execute if score #requested_size yrh_map_tmp matches 11 positioned ~ ~0.001 ~-0.5 align xyz run function yrh.map:function/worldmap/check_space_11
execute unless score #resize_next yrh_map_tmp = #requested_size yrh_map_tmp run return run title @s actionbar {translate:"yrh.map.no_space",fallback:"地図の設置に必要な空間がありません。",color:"red"}
data modify storage yrh.map:_ worldmap.owner_uuid set from entity @s UUID
function yrh.map:function/worldmap/owner_key
execute store result score #player_has_map yrh_map_tmp run function yrh.map:function/worldmap/check_player_map with storage yrh.map:_ worldmap.owner_key
execute if score #player_has_map yrh_map_tmp matches 1 run return 0
scoreboard players set #saved_map_size yrh_map_tmp 5
execute if score #map_size yrh_map_tmp matches 5..13 run scoreboard players operation #saved_map_size yrh_map_tmp = #map_size yrh_map_tmp
scoreboard players operation #map_size yrh_map_tmp = #requested_size yrh_map_tmp
function yrh.map:debug/add_anchor
scoreboard players operation #map_size yrh_map_tmp = #saved_map_size yrh_map_tmp
