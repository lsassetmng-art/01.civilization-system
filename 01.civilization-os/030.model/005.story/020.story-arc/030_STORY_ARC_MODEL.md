# ============================================================
# STORY ARC
# MODEL
# ============================================================

status: draft
layer: model
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for story arcs.

# 2. CORE ENTITIES

- story_arc
- arc_phase
- arc_condition
- arc_status

# 3. STATE MODEL

story_arc:
- story_arc_id
- story_definition_id
- arc_code
- arc_scope
- arc_status

arc_phase:
- arc_phase_id
- story_arc_id
- phase_code
- phase_order
- phase_status

arc_condition:
- arc_condition_id
- story_arc_id
- condition_type_code
- condition_value
- condition_status

arc_status:
- arc_status_id
- story_arc_id
- active_flag
- closed_flag
- changed_at

# 4. INTEGRITY RULES

- phase and condition must belong to one story arc
- phase order must be deterministic
- arc scope must be explicit
- hidden arc mutation is prohibited

