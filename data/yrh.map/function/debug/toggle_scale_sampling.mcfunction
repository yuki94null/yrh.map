execute unless entity @s[type=minecraft:player] run return 0
execute unless dimension minecraft:overworld run return 0
data modify storage yrh.map:_ worldmap.scale_debug.player set from entity @s UUID
execute at @s run function yrh.map:function/worldmap/scaled/navigation/toggle_owned_sampling with storage yrh.map:_ worldmap.scale_debug
