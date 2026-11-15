tag @s remove yrh.map.player.ui.radial_menu.input
function yrh.map:ui/radial_menu/hide_effect
function yrh.map:ui/radial_menu/hide_cursor
title @s actionbar {text:""}
data modify storage yrh.map:ui session set value {}
data modify storage yrh.map:ui session.player set from entity @s UUID
function yrh.map:ui/radial_menu/detach with storage yrh.map:ui session
