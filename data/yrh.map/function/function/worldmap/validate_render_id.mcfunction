$execute unless entity @e[type=minecraft:interaction,tag=yrh.map.worldmap_anchor,scores={yrh_map_id=$(map_id)},limit=1] run data remove storage yrh.map:_ worldmap.active_job
