# Options are laid out on a plane two blocks in front of the initial view.
# x/y are in thousandths of a block. The list order matches the shader sectors.
scoreboard objectives add yrh_rad_yaw dummy
scoreboard objectives add yrh_rad_pitch dummy
scoreboard objectives add yrh_rad_seen dummy
scoreboard objectives add yrh_rad_effect dummy
scoreboard objectives add yrh_rad_cursor dummy
scoreboard players set #radial_ten yrh_map_tmp 10
execute as @a[scores={yrh_rad_effect=0..13}] run function yrh.map:ui/radial_menu/hide_effect
execute as @a[scores={yrh_rad_cursor=0..120}] run function yrh.map:ui/radial_menu/hide_cursor
execute in minecraft:overworld run kill @e[type=minecraft:marker,tag=yrh.map.player.ui.radial_menu.rotate]
tag @a remove yrh.map.player.ui.radial_menu.input
data remove storage yrh.map:ui player_data
data remove storage yrh.map:ui tmp
data modify storage yrh.map:ui config.radial_menu.map.contents set value [ \
    {action:"waypoint/markers/toggle_visibility",label:"ピンの設定",direction:"↑",x:0,y:680}, \
    {action:"access/toggle",label:"公開設定",direction:"↗",x:-589,y:340}, \
    {action:"waypoint/next",label:"ページ次",direction:"↘",x:-589,y:-340}, \
    {action:"remove",label:"撤去",direction:"↓",x:0,y:-680}, \
    {action:"waypoint/previous",label:"ページ前",direction:"↙",x:589,y:-340}, \
    {action:"toggle_pin",label:"固定設定",direction:"↖",x:589,y:340} \
]
