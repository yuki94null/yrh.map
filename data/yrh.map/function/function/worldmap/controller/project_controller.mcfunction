data modify storage yrh.map:_ worldmap.controller_move.anchor_pos set from entity @s Pos
$execute as @a[distance=..16,nbt={UUID:$(owner)},predicate=yrh.map:is_sneaking,limit=1] run return run function yrh.map:function/worldmap/controller/clamp_position
return 0
