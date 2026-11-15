function yrh.map:function/worldmap/waypoint/create_buttons
execute if entity @s[tag=yrh.map.rim_controls_hidden] run return 0
tag @s add yrh.map.rim_buttons_v10
execute if entity @s[tag=yrh.map.size_13] run return run function yrh.map:function/worldmap/create_pan_controls_13
execute if entity @s[tag=yrh.map.size_11] run return run function yrh.map:function/worldmap/create_pan_controls_11
execute if entity @s[tag=yrh.map.size_9] run return run function yrh.map:function/worldmap/create_pan_controls_9
execute if entity @s[tag=yrh.map.size_7] run return run function yrh.map:function/worldmap/create_pan_controls_7
execute if entity @s[tag=yrh.map.size_5] run return run function yrh.map:function/worldmap/create_pan_controls_5
function yrh.map:function/worldmap/create_pan_controls_3
