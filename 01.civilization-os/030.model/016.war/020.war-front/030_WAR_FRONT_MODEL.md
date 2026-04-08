# ============================================================
# WAR FRONT
# MODEL
# ============================================================

status: draft
layer: model
domain: 016.war
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for war front structures.

# 2. CORE ENTITIES

- war_front
- front_line_segment
- front_condition
- front_status

# 3. STATE MODEL

war_front:
- war_front_id
- war_definition_id
- front_code
- front_scope
- front_status

front_line_segment:
- front_line_segment_id
- war_front_id
- segment_code
- segment_order
- segment_status

front_condition:
- front_condition_id
- war_front_id
- condition_type_code
- condition_value
- condition_status

front_status:
- front_status_id
- war_front_id
- active_flag
- closed_flag
- changed_at

# 4. INTEGRITY RULES

- line segment and condition must belong to one war front
- front scope must be explicit
- segment order must be deterministic
- hidden war-front mutation is prohibited

