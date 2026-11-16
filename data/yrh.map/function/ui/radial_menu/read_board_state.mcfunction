execute if data entity @s data.yrhmap{Pinned:1b} run data modify storage yrh.map:ui session.fixed set value 1b
execute if data entity @s data.yrhmap{Public:1b} run data modify storage yrh.map:ui session.public set value 1b
execute unless data entity @s data.yrhmap{HideOtherWaypoints:1b} run data modify storage yrh.map:ui session.shared_pins_visible set value 1b
return run function yrh.map:function/worldmap/controller/check_controller_bounds
