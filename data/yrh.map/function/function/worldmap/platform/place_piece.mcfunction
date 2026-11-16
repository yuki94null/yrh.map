$execute unless data storage yrh.map:_ worldmap.platform_resize run return run function yrh.map:function/worldmap/platform/summon_piece {scale:$(scale)}
$data modify storage yrh.map:_ worldmap.platform_resize.scale set value $(scale)
execute store result score #platform_piece_reused yrh_map_tmp run function yrh.map:function/worldmap/platform/reuse_piece with storage yrh.map:_ worldmap.platform_resize
$execute unless score #platform_piece_reused yrh_map_tmp matches 1 run function yrh.map:function/worldmap/platform/summon_piece {scale:$(scale)}
