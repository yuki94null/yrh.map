data modify storage yrh.map:_ worldmap.refinement set from storage yrh.map:_ worldmap.active_job
data modify storage yrh.map:_ worldmap.refinement.mode set value "average"
data modify storage yrh.map:_ worldmap.refinement.refine set value 1b
data remove storage yrh.map:_ worldmap.refinement.preview
data modify storage yrh.map:_ worldmap.load_queue append from storage yrh.map:_ worldmap.refinement
data remove storage yrh.map:_ worldmap.refinement
