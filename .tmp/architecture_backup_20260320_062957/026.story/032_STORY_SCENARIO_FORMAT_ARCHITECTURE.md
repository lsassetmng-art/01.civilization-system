# ============================================================
# STORY SCENARIO FORMAT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Story is defined as a JSON-based scenario format.

structure:
- story_id
- timeline_year
- chapter
- scenes[]

scene_types:
- dialogue
- exploration
- puzzle
- event

scene_structure:
- scene_id
- type
- entry_condition
- content
- exit_condition
- next

content:
Type-specific data structure.

state_management:
- flags
- inventory
- decision_history
- story_progress

rules:
- logic must not be hardcoded in application
- branching must be defined in data
- all effects must be explicit
- scenes must be deterministic

final_rule:
Story execution must be fully data-driven and platform-independent.
