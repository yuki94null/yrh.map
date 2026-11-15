data remove storage yrh.map:_ render.previous_color
data modify storage yrh.map:_ render.previous_color set from storage yrh.map:_ worldmap.text.extra[-1].color
$execute if data storage yrh.map:_ render.previous_mergeable if data storage yrh.map:_ render{previous_color:"$(color)"} run return run data modify storage yrh.map:_ worldmap.text.extra[-1].text set value "$(previous)$(text)"
data remove storage yrh.map:_ render.run_cell.previous
data modify storage yrh.map:_ worldmap.text.extra append from storage yrh.map:_ render.run_cell
data modify storage yrh.map:_ render.previous_mergeable set value 1b
