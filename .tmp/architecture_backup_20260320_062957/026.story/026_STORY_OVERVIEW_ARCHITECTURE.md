# ============================================================
# STORY OVERVIEW ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: story

definition:
Story domain defines narrative-driven gameplay
separate from core simulation.

style:
- adventure game style
- dialogue choices
- exploration
- puzzle solving
- character interaction

scope:
- scenario progression
- branching decisions
- timeline-based story structure

principles:
- story progression is state-driven
- player choice must be explicit
- story must not silently mutate main simulation unless defined
- story may reference world timeline

final_rule:
Story must operate as an isolated narrative system
with explicit progression and branching.
