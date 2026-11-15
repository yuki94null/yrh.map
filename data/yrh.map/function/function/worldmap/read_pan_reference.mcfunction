scoreboard players operation #reference_x yrh_map_tmp = @s yrh_map_ax
scoreboard players operation #reference_z yrh_map_tmp = @s yrh_map_az
data modify storage yrh.map:_ worldmap.display_quality set value "full"
execute if data entity @s data.yrhmap.Quality run data modify storage yrh.map:_ worldmap.display_quality set from entity @s data.yrhmap.Quality
