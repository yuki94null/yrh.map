$execute store result score #resize_result yrh_map_tmp run function yrh.map:function/worldmap/$(action)
execute if score #resize_result yrh_map_tmp matches 2 run return 0
$execute unless score #resize_result yrh_map_tmp matches 1 run return run title @a[nbt={UUID:$(player)},limit=1] actionbar {translate:"yrh.map.no_space",fallback:"地図を拡張するための空間がありません。",color:"red"}
