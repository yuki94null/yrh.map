execute if data entity @s data.yrhmap{Pinned:1b} run return run function yrh.map:function/worldmap/unpin_map
data modify entity @s data.yrhmap.Pinned set value 1b
function yrh.map:function/worldmap/refresh_fixed_indicator
function yrh.map:function/worldmap/refresh_pin_label
