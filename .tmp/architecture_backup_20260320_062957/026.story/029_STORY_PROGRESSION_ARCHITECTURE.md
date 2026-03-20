# ============================================================
# STORY PROGRESSION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Story progression tracks player advancement through timeline and scenes.

core_entities:
- story_progress
- scene_state
- decision_history

story_progress:
- player_id
- current_year
- current_chapter
- current_scene

decision_history:
- decision_id
- player_id
- scene_id
- selected_choice
- timestamp

rules:
- progression must be explicitly updated
- decisions must be recorded
- branching must depend on decision history

final_rule:
Story progression must be persistent, explicit, and replayable.
