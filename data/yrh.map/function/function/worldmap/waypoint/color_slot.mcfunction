$data modify entity @e[type=minecraft:text_display,tag=yrh.map.waypoint_slot.$(slot),scores={yrh_map_id=$(map_id)},limit=1] text.color set value "$(color)"
$data modify entity @e[type=minecraft:text_display,tag=yrh.map.waypoint_slot.$(slot),tag=yrh.map.new_part,limit=1] text.color set value "$(color)"
