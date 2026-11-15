# A large board can be clicked near its edge while its interaction origin is farther away.
$execute as @e[type=minecraft:interaction,tag=yrh.map.pan_control,distance=..16,nbt={$(event):{player:$(player)}},sort=nearest,limit=1] at @s run function yrh.map:function/worldmap/input/consume {event:"$(event)",side:"$(side)"}
