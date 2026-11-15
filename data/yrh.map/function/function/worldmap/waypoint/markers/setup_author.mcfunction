function yrh.map:function/worldmap/waypoint/markers/setup_text_display
data modify storage yrh.map:_ worldmap.waypoint_draw.author_text set value {text:"作成者不明",color:"white",shadow_color:0}
execute if data storage yrh.map:_ worldmap.waypoint_draw.pin.author run data modify storage yrh.map:_ worldmap.waypoint_draw.author_text.text set from storage yrh.map:_ worldmap.waypoint_draw.pin.author
data modify entity @s text set from storage yrh.map:_ worldmap.waypoint_draw.author_text
