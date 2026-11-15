$execute unless data storage yrh.map:map_ids used.m_$(map_id) unless entity @e[tag=yrh.map.worldmap_anchor,scores={yrh_map_id=$(map_id)},limit=1] run return 0
scoreboard players add #free_map_id yrh_map_id 1
function yrh.map:function/worldmap/find_free_map_id
