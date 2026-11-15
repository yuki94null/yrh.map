execute if entity @s[tag=yrh.map.scale_2] run return run function yrh.map:function/worldmap/scaled/navigation/change_scale {from:2,to:4}
execute if entity @s[tag=yrh.map.scale_4] run return run function yrh.map:function/worldmap/scaled/navigation/change_scale {from:4,to:8}
execute if entity @s[tag=yrh.map.scale_8] run return run function yrh.map:function/worldmap/scaled/navigation/change_scale {from:8,to:16}
execute unless entity @s[tag=yrh.map.scale_16] run function yrh.map:function/worldmap/scaled/navigation/change_scale {from:1,to:2}
