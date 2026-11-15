scoreboard players set #waypoint_count yrh_map_tmp 0
execute if data storage yrh.map:waypoints public run execute store result score #waypoint_count yrh_map_tmp run data get storage yrh.map:waypoints public
scoreboard players set #waypoint_page_max yrh_map_tmp 0
scoreboard players operation #waypoint_page_max yrh_map_tmp = #waypoint_count yrh_map_tmp
scoreboard players add #waypoint_page_max yrh_map_tmp 11
scoreboard players set #waypoint_page_length yrh_map_tmp 12
scoreboard players operation #waypoint_page_max yrh_map_tmp /= #waypoint_page_length yrh_map_tmp
function yrh.map:function/worldmap/waypoint/read_page
execute if score #waypoint_page yrh_map_tmp >= #waypoint_page_max yrh_map_tmp run return 0
scoreboard players add #waypoint_page yrh_map_tmp 1
function yrh.map:function/worldmap/waypoint/write_page
