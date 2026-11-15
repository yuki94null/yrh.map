data modify storage yrh.map:_ worldmap.args set value {x:0,z:0}
execute store result storage yrh.map:_ worldmap.args.x int 1 run data get entity @s Pos[0]
execute store result storage yrh.map:_ worldmap.args.z int 1 run data get entity @s Pos[2]
function yrh.map:function/worldmap/render_chunk with storage yrh.map:_ worldmap.args
summon minecraft:text_display ~ ~5 ~1 {Tags:["yrh.map.worldmap_preview"],billboard:"fixed",brightness:{block:15,sky:15},line_width:152,background:0,default_background:0b,shadow:0b,see_through:0b,alignment:"left",text_opacity:255,transformation:{left_rotation:[-0.7071068f,0f,0f,0.7071068f],right_rotation:[0f,0f,0f,1f],scale:[4.444444f,4f,4f],translation:[0f,0f,0f]}}
data modify entity @e[type=minecraft:text_display,tag=yrh.map.worldmap_preview,limit=1,sort=nearest] text set from storage yrh.map:_ worldmap.text
kill @s
