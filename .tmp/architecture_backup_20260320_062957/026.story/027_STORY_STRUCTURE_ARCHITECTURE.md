# ============================================================
# STORY STRUCTURE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Story is structured as timeline-based chapters.

structure:
- timeline_year
- chapter
- scene
- event

example:
- year_0 → chapter_1 → scene_1
- year_18 → free_end_boundary
- year_19+ → premium_content

rules:
- story must follow timeline order unless branching defined
- progression must be saved explicitly
- each scene must have entry and exit conditions

timeline_source:
- CIVILIZATION timeline file

final_rule:
Story progression must be structured along timeline units
with explicit state tracking.
