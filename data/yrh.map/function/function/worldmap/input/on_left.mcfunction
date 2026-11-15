advancement revoke @s only yrh.map:worldmap/button_left
execute unless dimension minecraft:overworld run return 0
function yrh.map:function/worldmap/input/enter {event:"attack",side:"left"}
