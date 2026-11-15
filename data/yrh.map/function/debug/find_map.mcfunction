execute unless entity @s[type=minecraft:player] run return 0
data modify storage yrh.map:_ worldmap.owner_uuid set from entity @s UUID
function yrh.map:function/worldmap/owner_key
function yrh.map:function/worldmap/show_player_map with storage yrh.map:_ worldmap.owner_key
