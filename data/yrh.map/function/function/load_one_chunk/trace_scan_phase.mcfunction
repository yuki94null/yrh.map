execute store result score #scan_trace_tick yrh_map_tmp run time query gametime
tellraw @a[tag=yrh.map.scan_trace] [{text:"[Map Scan] ",color:"gold"},{text:"tick="},{score:{name:"#scan_trace_tick",objective:"yrh_map_tmp"}},{text:" X="},{nbt:"terrain.job.x",storage:"yrh.map:_"},{text:" Z="},{nbt:"terrain.job.z",storage:"yrh.map:_"},{text:" phase="},{nbt:"terrain.job.phase",storage:"yrh.map:_"}]
