execute unless score @s yrh_map_hx matches -2147483648..2147483647 run return 0
execute if score @s yrh_map_ax = @s yrh_map_hx if score @s yrh_map_az = @s yrh_map_hz run return 0
scoreboard players operation @s yrh_map_ax = @s yrh_map_hx
scoreboard players operation @s yrh_map_az = @s yrh_map_hz
data modify storage yrh.map:_ worldmap.reload set value 1b
function yrh.map:function/worldmap/commit_reference
data remove storage yrh.map:_ worldmap.reload
