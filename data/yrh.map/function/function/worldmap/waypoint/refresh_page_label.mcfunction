function yrh.map:function/worldmap/waypoint/read_page
data modify storage yrh.map:_ worldmap.waypoint_label set value {text:{text:"個人",color:"white",shadow_color:0}}
execute store result storage yrh.map:_ worldmap.waypoint_label.map_id int 1 run scoreboard players get @s yrh_map_id
execute store result storage yrh.map:_ worldmap.waypoint_label.page int 1 run scoreboard players get #waypoint_page yrh_map_tmp
execute if score #waypoint_page yrh_map_tmp matches 1.. run function yrh.map:function/worldmap/waypoint/shared_page_label with storage yrh.map:_ worldmap.waypoint_label
function yrh.map:function/worldmap/waypoint/apply_page_label with storage yrh.map:_ worldmap.waypoint_label
