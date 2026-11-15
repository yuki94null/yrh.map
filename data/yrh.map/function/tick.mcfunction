#|| --- CrossRefs --- ||#
#|| @yrh.map:tick
#||
#||    # tags/function
#||        @minecraft:tick
#||
#|| ------ End ------ ||#

# Process a bounded piece of queued chunk work per game tick.
execute as @a[scores={yrh_map_use=1..}] at @s run function yrh.map:function/worldmap/handle_map_item_use
function yrh.map:function/worldmap/owner_distance_tick
function yrh.map:function/worldmap/platform/tick
function yrh.map:function/worldmap/waypoint/markers/tick
function yrh.map:function/worldmap/controller/controller_tick
# Let an in-flight terrain scan finish before rendering reads surface heights.
execute in minecraft:overworld unless entity @e[type=minecraft:text_display,tag=yrh.map.worldmap_cache_pending] unless data storage yrh.map:_ terrain.job run function yrh.map:function/worldmap/tick_load_queue
execute in minecraft:overworld as @e[type=minecraft:text_display,tag=yrh.map.worldmap_cache_pending,limit=4] run function yrh.map:function/worldmap/apply_next_cached_tile
execute in minecraft:overworld run function yrh.map:function/load_one_chunk/player_scan_tick
# execute as @a at @s run function yrh.map:function/render/root
