execute if entity @s[tag=yrh.map.waypoint_buttons_present] run return 0
tag @s add yrh.map.waypoint_buttons_present
function yrh.map:function/worldmap/waypoint/create_layout
function yrh.map:function/worldmap/waypoint/refresh_page_label
function yrh.map:function/worldmap/waypoint/refresh_slots
