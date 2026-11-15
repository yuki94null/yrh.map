"""Generate the first one-text-display-per-chunk world map renderer."""
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
FUNC = ROOT / "data/yrh.map/function/function/worldmap"
FUNC.mkdir(parents=True, exist_ok=True)

root = [
    "# One text display contains one 16x16 chunk.",
    'data modify storage yrh.map:_ render set value {position:{}}',
    'data modify storage yrh.map:_ worldmap.text set value {text:"",extra:[]}',
]
for row in range(16):
    root.append(f"function yrh.map:function/worldmap/render_row/{row}")
(FUNC / "render_chunk.mcfunction").write_text("\n".join(root) + "\n", encoding="utf-8")

for row in range(16):
    commands = [
        f'data modify storage yrh.map:_ render.position.z set compute default integer {{"type":"minecraft:add","inputs":[{{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0}},{row}]}}'
    ]
    for column in range(16):
        commands += [
            f'data modify storage yrh.map:_ render.position.x set compute default integer {{"type":"minecraft:add","inputs":[{{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0}},{column}]}}',
            f"data modify storage yrh.map:_ render.position.i set value {column}",
            "function yrh.map:function/render/cell with storage yrh.map:_ render.position",
            f"data modify storage yrh.map:_ worldmap.text.extra append from storage yrh.map:_ render.c{column}",
        ]
    if row < 15:
        commands.append('data modify storage yrh.map:_ worldmap.text.extra append value {text:"\\n",font:"yrh.map:map_pixel",shadow_color:0}')
    (FUNC / "render_row" / f"{row}.mcfunction").parent.mkdir(parents=True, exist_ok=True)
    (FUNC / "render_row" / f"{row}.mcfunction").write_text(
        "\n".join(commands) + "\n", encoding="utf-8"
    )

# Create a black 3x3 grid first; each tile is filled when its chunk scan finishes.
black_text = "■\ue000" * 256
create_tiles = [
    'data modify storage yrh.map:_ worldmap.black_text set value '
    + '{text:"' + black_text + '",font:"yrh.map:map_pixel",color:"#000000",shadow_color:0}'
]


def tile_tag(value: int) -> str:
    return f"p{value}" if value >= 0 else f"m{-value}"


for size in (3, 5, 7, 9, 11, 13):
    radius = size // 2
    offsets = sorted(
        ((x, z) for x in range(-radius, radius + 1) for z in range(-radius, radius + 1)),
        key=lambda offset: offset[0] ** 2 + offset[1] ** 2,
    )
    tile_commands = create_tiles.copy()
    for dx, dz in offsets:
        tag = f"yrh.map.tile_{tile_tag(dx)}_{tile_tag(dz)}"
        start = len(tile_commands)
        tile_commands += [
            'summon minecraft:text_display ~ ~ ~ {Tags:["yrh.map.worldmap_chunk_display","yrh.map.new_part","yrh.map.stationary_tiles","%s"],billboard:"fixed",brightness:{block:15,sky:15},line_width:152,background:0,default_background:0b,shadow:0b,see_through:0b,alignment:"left",text_opacity:255,transformation:{left_rotation:[-0.7071068f,0f,0f,0.7071068f],right_rotation:[0f,0f,0f,1f],scale:[0.2777778f,0.25f,0.25f],translation:[%sf,1f,%sf]}}' % (tag, dx, dz),
            f"scoreboard players set @e[type=minecraft:text_display,tag={tag},tag=yrh.map.new_part,limit=1,sort=nearest] yrh_map_tx {dx}",
            f"scoreboard players set @e[type=minecraft:text_display,tag={tag},tag=yrh.map.new_part,limit=1,sort=nearest] yrh_map_tz {dz}",
        ]
        for index in range(start, len(tile_commands)):
            tile_commands[index] = f"execute unless data storage yrh.map:_ worldmap.resizing run {tile_commands[index]}"
        tile_commands.append(
            f"execute if data storage yrh.map:_ worldmap.resizing run function yrh.map:function/worldmap/ensure_resize_tile {{x:{dx},z:{dz},slot:\"{tag}\"}}"
        )
    (FUNC / f"create_tiles_{size}.mcfunction").write_text(
        "\n".join(tile_commands) + "\n", encoding="utf-8"
    )

    # Enqueue candidates center-out so the anchor's reference chunk is handled first.
    enqueue = ["# Candidate order: center, cardinal neighbors, then diagonals."]
    for dx, dz in offsets:
        enqueue += [
            'data modify storage yrh.map:_ worldmap.queue_candidate.x set compute default integer '
            '{"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.x","fallback":0},%d]}' % (dx * 16),
            'data modify storage yrh.map:_ worldmap.queue_candidate.z set compute default integer '
            '{"type":"minecraft:add","inputs":[{"type":"minecraft:storage","storage":"yrh.map:_","path":"worldmap.args.z","fallback":0},%d]}' % (dz * 16),
            "function yrh.map:function/worldmap/enqueue_job",
        ]
    (FUNC / f"enqueue_area_{size}.mcfunction").write_text(
        "\n".join(enqueue) + "\n", encoding="utf-8"
    )

(FUNC / "enqueue_job.mcfunction").write_text(
    'execute if data storage yrh.map:_ worldmap.preview_pass run return run function yrh.map:function/worldmap/enqueue_preview_candidate with storage yrh.map:_ worldmap.queue_candidate\n'
    'execute if data storage yrh.map:_ worldmap.reload run return run function yrh.map:function/worldmap/enqueue_reload_candidate with storage yrh.map:_ worldmap.queue_candidate\n'
    'execute if data storage yrh.map:_ worldmap.pan run return run function yrh.map:function/worldmap/enqueue_pan_candidate with storage yrh.map:_ worldmap.queue_candidate\n'
    'data modify storage yrh.map:_ worldmap.load_queue append from storage yrh.map:_ worldmap.queue_candidate\n',
    encoding="utf-8",
)
