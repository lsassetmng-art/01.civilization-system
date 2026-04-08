# ============================================================
# WORLD STATE
# MODEL
# ============================================================

status: draft
layer: model
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for world state structures.

# 2. CORE ENTITIES

- world_state_record
- world_condition_state
- world_metric_state
- world_state_status

# 3. STATE MODEL

world_state_record:
- world_state_record_id
- world_definition_id
- state_scope
- state_version
- state_status

world_condition_state:
- world_condition_state_id
- world_state_record_id
- condition_type_code
- condition_value
- condition_status

world_metric_state:
- world_metric_state_id
- world_state_record_id
- metric_code
- metric_value
- metric_status

world_state_status:
- world_state_status_id
- world_state_record_id
- active_flag
- frozen_flag
- changed_at

# 4. INTEGRITY RULES

- condition and metric state must belong to one world state record
- state scope must be explicit
- active and frozen state must be explicit
- hidden world-state mutation is prohibited

