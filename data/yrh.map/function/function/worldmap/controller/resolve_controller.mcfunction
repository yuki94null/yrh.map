$execute as @e[type=minecraft:interaction,tag=yrh.map.worldmap_anchor,scores={yrh_map_id=1..},nbt={UUID:$(anchor)},limit=1] at @s run return run function yrh.map:function/worldmap/controller/update_controller
function yrh.map:function/worldmap/controller/controller_unavailable
