
$data modify storage yrh.map:_ worldmap.slot_label.text set value {text:"P$(slot) —",color:"white",shadow_color:0}
$execute if score #waypoint_page yrh_map_tmp matches 0 if data storage yrh.map:waypoints players.p_$(u0)_$(u1)_$(u2)_$(u3).s$(slot) run data modify storage yrh.map:_ worldmap.slot_label.text.text set value "P$(slot) PRIVATE"
$execute if score #waypoint_page yrh_map_tmp matches 0 if data storage yrh.map:waypoints public[{id:"p_$(u0)_$(u1)_$(u2)_$(u3)_$(slot)"}] run data modify storage yrh.map:_ worldmap.slot_label.text.text set value "P$(slot) PUBLIC"
$execute if score #waypoint_page yrh_map_tmp matches 1.. if data storage yrh.map:waypoints public[$(index)] run data modify storage yrh.map:_ worldmap.slot_label.text.text set value "P$(slot) PUBLIC"
$data modify entity @e[type=minecraft:text_display,tag=yrh.map.waypoint_slot.$(slot),scores={yrh_map_id=$(map_id)},limit=1] text set from storage yrh.map:_ worldmap.slot_label.text
$data modify entity @e[type=minecraft:text_display,tag=yrh.map.waypoint_slot.$(slot),tag=yrh.map.new_part,limit=1] text set from storage yrh.map:_ worldmap.slot_label.text
