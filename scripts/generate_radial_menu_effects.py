"""Generate the radial ring effects for each selection and settings state."""
import json
from pathlib import Path


EFFECTS = Path(__file__).resolve().parents[1] / "resource_pack_overlay/assets/yrh.map/post_effect/radial_menu"


def generate():
    # Use the unselected effect as the template for the shared passes and samplers.
    effect = json.loads((EFFECTS / "0.json").read_text(encoding="utf-8"))
    uniforms = effect["passes"][0]["uniforms"]
    for settings in range(8):
        for selected in range(7):
            uniforms["RadialMenuConfig"] = [
                {"name": "SelectedSector", "type": "float", "value": selected},
                {"name": "FixedEnabled", "type": "float", "value": settings & 1},
                {"name": "PublicEnabled", "type": "float", "value": (settings >> 1) & 1},
                {"name": "SharedPinsVisible", "type": "float", "value": (settings >> 2) & 1},
            ]
            index = settings * 7 + selected
            (EFFECTS / f"{index}.json").write_text(
                json.dumps(effect, indent=2) + "\n", encoding="utf-8",
            )


if __name__ == "__main__":
    generate()
