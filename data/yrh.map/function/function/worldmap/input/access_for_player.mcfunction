$execute if data entity @s data.yrhmap{Owner:$(player)} run return 2
execute if data entity @s data.yrhmap{Public:1b} if data entity @s data.yrhmap.Owner run return 1
return 0
