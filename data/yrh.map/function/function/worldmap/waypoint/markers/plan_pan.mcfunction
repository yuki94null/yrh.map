function yrh.map:function/worldmap/waypoint/markers/read_pan_width
# Reuse tiles only when their old and new terrain footprints align.
scoreboard players operation #waypoint_pan_remainder yrh_map_tmp = #waypoint_pan_x yrh_map_tmp
scoreboard players operation #waypoint_pan_remainder yrh_map_tmp %= #waypoint_pan_width yrh_map_tmp
execute unless score #waypoint_pan_remainder yrh_map_tmp matches 0 run return 0
scoreboard players operation #waypoint_pan_remainder yrh_map_tmp = #waypoint_pan_z yrh_map_tmp
scoreboard players operation #waypoint_pan_remainder yrh_map_tmp %= #waypoint_pan_width yrh_map_tmp
execute unless score #waypoint_pan_remainder yrh_map_tmp matches 0 run return 0
scoreboard players operation #waypoint_pan_x yrh_map_tmp /= #waypoint_pan_width yrh_map_tmp
scoreboard players operation #waypoint_pan_z yrh_map_tmp /= #waypoint_pan_width yrh_map_tmp
return 1
