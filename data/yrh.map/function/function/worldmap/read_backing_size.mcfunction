function yrh.map:function/worldmap/waypoint/board_size
scoreboard players operation #map_backing_size yrh_map_tmp = #waypoint_board_size yrh_map_tmp
scoreboard players add #map_backing_size yrh_map_tmp 2
# A 128-pixel glyph spans 3.2 blocks at display scale 1.
execute store result storage yrh.map:_ worldmap.backing.scale float 0.3125 run scoreboard players get #map_backing_size yrh_map_tmp
execute store result storage yrh.map:_ worldmap.backing.map_id int 1 run scoreboard players get @s yrh_map_id
