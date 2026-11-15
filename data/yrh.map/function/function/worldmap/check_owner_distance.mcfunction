execute if data entity @s data.yrhmap{Pinned:1b} run return 0
$execute if entity @a[distance=..25,nbt={UUID:$(Owner)},limit=1] run return 0
function yrh.map:function/worldmap/remove_owned_map
