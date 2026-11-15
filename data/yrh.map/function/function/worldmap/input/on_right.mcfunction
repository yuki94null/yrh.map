advancement revoke @s only yrh.map:worldmap/button_right
execute unless dimension minecraft:overworld run return 0
function yrh.map:function/worldmap/input/enter {event:"interaction",side:"right"}
