tag @s add yrh.map.platform_resize_kept
tp @s ~ ~ ~
$attribute @s minecraft:scale base set $(scale)
data modify entity @s data.yrhmap.PlatformPos set from entity @s Pos
data merge entity @s {Motion:[0d,0d,0d],still_timeout:2147483647}
return 1
