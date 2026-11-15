
execute if data entity @s data.yrhmap{Public:1b} run return run function yrh.map:function/worldmap/access/make_private
data modify entity @s data.yrhmap.Public set value 1b
function yrh.map:function/worldmap/access/refresh_label
