# Show the currently processed chunk and the pending center-out queue.
tellraw @s [{"text":"Text cache hits: "},{"score":{"name":"#text_cache_hits","objective":"yrh_map_tmp"}}]
tellraw @s [{"text":"Last text cache attempt: "},{"nbt":"worldmap.debug.last_cache_attempt","storage":"yrh.map:_","interpret":false}]
tellraw @s [{"text":"Cache write: "},{"nbt":"worldmap.debug.cache_write","storage":"yrh.map:_","interpret":false}]
tellraw @s [{"text":"Last text cache saved: "},{"nbt":"worldmap.debug.last_text_cache","storage":"yrh.map:_","interpret":false}]
tellraw @s [{"text":"Active work: "},{"nbt":"worldmap.active_job","storage":"yrh.map:_","interpret":false}]
tellraw @s [{"text":"Pending queue: "},{"nbt":"worldmap.load_queue","storage":"yrh.map:_","interpret":false}]
tellraw @s [{"text":"Terrain scan: "},{"nbt":"terrain.job","storage":"yrh.map:_","interpret":false}]
scoreboard players set #manual_scan_pending yrh_map_tmp 0
execute if data storage yrh.map:_ terrain.manual_queue store result score #manual_scan_pending yrh_map_tmp run data get storage yrh.map:_ terrain.manual_queue
tellraw @s [{text:"Manual scan pending: "},{score:{name:"#manual_scan_pending",objective:"yrh_map_tmp"}}]
tellraw @s [{"text":"Last terrain scan: "},{"nbt":"terrain.last_completed","storage":"yrh.map:_","interpret":false}]
tellraw @s [{"text":"Tiles queued by last reload: "},{"nbt":"worldmap.debug.reload_queued","storage":"yrh.map:_","interpret":false}]
tellraw @s [{"text":"Last color probe: "},{"nbt":"worldmap.debug.last_color_probe","storage":"yrh.map:_","interpret":false}]
tellraw @s [{"text":"Last rendered tile: "},{"nbt":"worldmap.debug.last_render","storage":"yrh.map:_","interpret":false}]
tellraw @s [{"text":"Last after_load: "},{"nbt":"worldmap.debug.last_after_load","storage":"yrh.map:_","interpret":false}]
tellraw @s [{"text":"Tile checks: "},{"nbt":"worldmap.debug.tile_checks","storage":"yrh.map:_","interpret":false}]
