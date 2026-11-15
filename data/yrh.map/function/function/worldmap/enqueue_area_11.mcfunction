# Candidate order: center, cardinal neighbors, then diagonals.
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},0]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},0]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-16]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},0]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},0]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-16]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},0]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},16]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},16]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},0]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-16]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-16]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-16]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},16]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},16]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-16]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},16]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},16]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-32]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},0]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},0]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-32]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},0]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},32]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},32]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},0]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-32]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-16]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-32]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},16]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-16]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-32]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-16]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},32]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},16]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-32]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},16]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},32]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},32]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-16]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},32]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},16]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-32]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-32]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-32]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},32]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},32]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-32]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},32]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},32]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-48]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},0]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},0]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-48]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},0]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},48]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},48]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},0]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-48]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-16]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-48]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},16]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-16]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-48]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-16]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},48]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},16]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-48]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},16]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},48]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},48]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-16]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},48]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},16]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-48]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-32]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-48]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},32]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-32]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-48]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-32]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},48]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},32]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-48]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},32]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},48]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},48]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-32]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},48]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},32]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-64]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},0]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},0]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-64]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},0]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},64]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},64]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},0]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-64]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-16]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-64]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},16]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-16]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-64]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-16]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},64]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},16]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-64]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},16]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},64]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},64]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-16]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},64]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},16]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-48]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-48]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-48]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},48]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},48]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-48]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},48]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},48]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-64]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-32]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-64]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},32]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-32]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-64]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-32]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},64]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},32]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-64]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},32]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},64]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},64]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-32]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},64]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},32]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-80]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},0]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-64]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-48]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-64]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},48]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-48]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-64]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-48]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},64]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},0]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-80]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},0]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},80]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},48]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-64]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},48]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},64]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},64]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-48]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},64]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},48]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},80]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},0]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-80]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-16]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-80]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},16]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-16]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-80]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-16]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},80]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},16]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-80]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},16]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},80]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},80]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-16]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},80]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},16]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-80]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-32]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-80]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},32]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-32]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-80]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-32]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},80]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},32]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-80]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},32]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},80]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},80]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-32]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},80]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},32]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-64]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-64]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-64]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},64]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},64]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-64]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},64]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},64]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-80]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-48]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-80]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},48]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-48]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-80]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-48]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},80]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},48]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-80]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},48]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},80]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},80]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-48]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},80]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},48]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-80]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-64]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-80]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},64]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-64]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-80]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-64]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},80]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},64]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-80]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},64]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},80]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},80]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-64]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},80]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},64]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-80]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-80]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},-80]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},80]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},80]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},-80]}
function yrh.map:function/worldmap/enqueue_job
data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},80]}
data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer {"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},80]}
function yrh.map:function/worldmap/enqueue_job
