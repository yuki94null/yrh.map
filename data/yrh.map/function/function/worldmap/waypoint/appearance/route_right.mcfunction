$execute if score #map_click_access yrh_map_tmp matches 2 unless data storage yrh.map:_ worldmap.click{sneaking:1b} if items entity @a[nbt={UUID:$(player)},limit=1] weapon.mainhand * run return run function yrh.map:function/worldmap/waypoint/appearance/owner_action {action:"set"}
function yrh.map:function/worldmap/waypoint/slot_right_owned with storage yrh.map:_ worldmap.click
