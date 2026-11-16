data modify storage yrh.map:_ worldmap.platform_resize set from storage yrh.map:_ worldmap.resize_owner
function yrh.map:function/worldmap/platform/create
function yrh.map:function/worldmap/platform/finish_resize with storage yrh.map:_ worldmap.platform_resize
data remove storage yrh.map:_ worldmap.platform_resize
