function yrh.map:function/worldmap/waypoint/read_page
execute if score #waypoint_page yrh_map_tmp matches ..0 run return 0
scoreboard players remove #waypoint_page yrh_map_tmp 1
function yrh.map:function/worldmap/waypoint/write_page
