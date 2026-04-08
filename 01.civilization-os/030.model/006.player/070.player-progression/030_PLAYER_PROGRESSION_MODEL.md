# ============================================================
# PLAYER PROGRESSION
# MODEL
# ============================================================

status: draft
layer: model
domain: 006.player
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for player progression structures.

# 2. CORE ENTITIES

- player_progression_record
- progression_metric
- progression_level_state
- progression_status

# 3. STATE MODEL

player_progression_record:
- player_progression_record_id
- player_definition_id
- progression_scope
- progression_type_code
- progression_status

progression_metric:
- progression_metric_id
- player_progression_record_id
- metric_code
- metric_value
- metric_status

progression_level_state:
- progression_level_state_id
- player_progression_record_id
- level_code
- level_value
- level_status

progression_status:
- progression_status_id
- player_progression_record_id
- active_flag
- frozen_flag
- changed_at

# 4. INTEGRITY RULES

- metric and level state must belong to one progression record
- progression scope must be explicit
- active and frozen state must be explicit
- hidden progression mutation is prohibited

