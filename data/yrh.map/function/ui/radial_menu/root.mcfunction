# The sprint input is the bound Ctrl key by default.
execute store result score #radial_now yrh_map_tmp run time query gametime
execute as @a[tag=yrh.map.player.ui.radial_menu.input] at @s run function yrh.map:ui/radial_menu/update
execute in minecraft:overworld as @a[tag=!yrh.map.player.ui.radial_menu.input] at @s if dimension minecraft:overworld if predicate yrh.map:is_sprint_input if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_data~{yrhmap:{placer:1b}}] run function yrh.map:ui/radial_menu/start
