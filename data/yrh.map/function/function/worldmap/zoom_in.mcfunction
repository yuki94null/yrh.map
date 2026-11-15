execute if entity @s[tag=yrh.map.scale_16] run return run function yrh.map:function/worldmap/scaled/navigation/change_scale {from:16,to:8}
execute if entity @s[tag=yrh.map.scale_8] run return run function yrh.map:function/worldmap/scaled/navigation/change_scale {from:8,to:4}
execute if entity @s[tag=yrh.map.scale_4] run return run function yrh.map:function/worldmap/scaled/navigation/change_scale {from:4,to:2}
execute if entity @s[tag=yrh.map.scale_2] run return run function yrh.map:function/worldmap/scaled/navigation/change_scale {from:2,to:1}
return 0
