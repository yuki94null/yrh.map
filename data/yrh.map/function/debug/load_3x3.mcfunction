# Scan the 3x3 chunk area around the chunk selected by load_one_chunk/root.
# execute positioned ~-16 ~ ~-16 run function yrh.map:function/load_one_chunk/root
# execute positioned ~ ~ ~-16 run function yrh.map:function/load_one_chunk/root
# execute positioned ~16 ~ ~-16 run function yrh.map:function/load_one_chunk/root
execute positioned ~-16 ~ ~ run function yrh.map:function/load_one_chunk/root
function yrh.map:function/load_one_chunk/root
execute positioned ~16 ~ ~ run function yrh.map:function/load_one_chunk/root
# execute positioned ~-16 ~ ~16 run function yrh.map:function/load_one_chunk/root
# execute positioned ~ ~ ~16 run function yrh.map:function/load_one_chunk/root
# execute positioned ~16 ~ ~16 run function yrh.map:function/load_one_chunk/root
