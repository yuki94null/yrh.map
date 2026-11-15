function yrh.map:function/worldmap/scaled/render/pixel_position
execute if data storage yrh.map:_ worldmap.active_job{mode:"average"} run function yrh.map:function/worldmap/scaled/render/average/average_pixel
execute if data storage yrh.map:_ worldmap.active_job{mode:"representative"} run function yrh.map:function/worldmap/scaled/render/representative/representative_pixel
function yrh.map:function/worldmap/scaled/render/advance_pixel
