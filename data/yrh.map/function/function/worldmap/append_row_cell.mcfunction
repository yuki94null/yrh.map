$data modify storage yrh.map:_ render.run_cell set from storage yrh.map:_ render.c$(i)
execute unless data storage yrh.map:_ render.mergeable run return run function yrh.map:function/worldmap/append_unmerged_cell
execute unless data storage yrh.map:_ render.previous_mergeable run return run function yrh.map:function/worldmap/start_row_run
data modify storage yrh.map:_ render.run_cell.previous set from storage yrh.map:_ worldmap.text.extra[-1].text
function yrh.map:function/worldmap/merge_row_cell with storage yrh.map:_ render.run_cell
