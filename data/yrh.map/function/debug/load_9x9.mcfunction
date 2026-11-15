tag @s add yrh.map.enqueue_scan_report
execute if dimension minecraft:overworld positioned ~-8 ~ ~-8 positioned ~72057594067927936 ~ ~72057594067927936 positioned ~-72057594067927936 ~ ~-72057594067927936 summon minecraft:marker run function yrh.map:function/load_one_chunk/enqueue_9x9
tag @s remove yrh.map.enqueue_scan_report
