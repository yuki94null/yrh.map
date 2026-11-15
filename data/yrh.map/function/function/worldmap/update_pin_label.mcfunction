$execute as @e[type=minecraft:text_display,tag=yrh.map.pin_label,scores={yrh_map_id=$(map_id)}] run data modify entity @s text set from storage yrh.map:_ worldmap.pin.label
