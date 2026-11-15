$execute as @a[dx=$(span),dy=1,dz=$(span),distance=0..,nbt={UUID:$(owner)},limit=1] at @s if predicate yrh.map:is_sneaking positioned ~ $(y) ~ run return run function yrh.map:function/worldmap/controller/ensure_controller with storage yrh.map:_ worldmap.controller_move
return 0
