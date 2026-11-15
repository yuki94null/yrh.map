scoreboard players set @s yrh_map_ax 0
scoreboard players set @s yrh_map_az 0
execute store result score @s yrh_map_ax run data get storage yrh.map:_ worldmap.args.x
execute store result score @s yrh_map_az run data get storage yrh.map:_ worldmap.args.z
function yrh.map:function/worldmap/commit_reference
