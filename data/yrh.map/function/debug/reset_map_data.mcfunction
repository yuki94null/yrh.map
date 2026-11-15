# Clear persistent map data and cancel work that could write it back.
data remove storage yrh.map:surface chunks
data remove storage yrh.map:surface "minecraft:over_world"
data remove storage yrh.map:render "minecraft:over_world"
data remove storage yrh.map:worldmap_text chunks
data remove storage yrh.map:worldmap_text scale_4
data remove storage yrh.map:worldmap_text scaled
data remove storage yrh.map:_ terrain.job
data remove storage yrh.map:_ terrain.manual_queue
data remove storage yrh.map:_ terrain.last_completed
data remove storage yrh.map:_ worldmap.active_job
data remove storage yrh.map:_ worldmap.load_queue
data remove storage yrh.map:_ worldmap.stage_snapshot
data remove storage yrh.map:_ worldmap.text
data remove storage yrh.map:_ worldmap.debug
execute in minecraft:overworld run tag @e[type=minecraft:text_display,tag=yrh.map.worldmap_render_target] remove yrh.map.worldmap_render_target
execute in minecraft:overworld as @e[type=minecraft:text_display,tag=yrh.map.worldmap_chunk_display] run tag @s add yrh.map.worldmap_cache_pending
title @s actionbar {text:"[Map] 地形・色・描画キャッシュと待機中の処理を消去しました。"}
