
data modify entity @e[type=minecraft:text_display,tag=yrh.map.access_label,tag=yrh.map.new_part,limit=1] text set from storage yrh.map:_ worldmap.access_label.text
$execute as @e[type=minecraft:text_display,tag=yrh.map.access_label,scores={yrh_map_id=$(map_id)}] run data modify entity @s text set from storage yrh.map:_ worldmap.access_label.text
