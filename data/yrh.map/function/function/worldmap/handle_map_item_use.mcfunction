scoreboard players set @s yrh_map_use 0
execute if entity @s[tag=yrh.map.player.ui.radial_menu.input] run return 0
execute unless items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_data~{yrhmap:{placer:1b}}] run return 0
execute unless dimension minecraft:overworld run return run title @s actionbar {translate:"yrh.map.overworld_only",fallback:"地図はオーバーワールドに設置できます。",color:"red"}
data remove storage yrh.map:_ worldmap.placement_quality
data modify storage yrh.map:_ worldmap.placement_quality set from entity @s SelectedItem.components."minecraft:custom_data".yrhmap.quality
function yrh.map:function/worldmap/place_from_item
data remove storage yrh.map:_ worldmap.placement_quality
