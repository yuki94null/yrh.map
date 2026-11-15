scoreboard players remove #waypoint_page yrh_map_tmp 1
scoreboard players set #waypoint_page_length yrh_map_tmp 12
scoreboard players operation #waypoint_page yrh_map_tmp *= #waypoint_page_length yrh_map_tmp
execute store result score #waypoint_slot yrh_map_tmp run data get storage yrh.map:_ worldmap.waypoint.slot
scoreboard players operation #waypoint_page yrh_map_tmp += #waypoint_slot yrh_map_tmp
scoreboard players remove #waypoint_page yrh_map_tmp 1
execute store result storage yrh.map:_ worldmap.waypoint.index int 1 run scoreboard players get #waypoint_page yrh_map_tmp
function yrh.map:function/worldmap/waypoint/read_shared with storage yrh.map:_ worldmap.waypoint
