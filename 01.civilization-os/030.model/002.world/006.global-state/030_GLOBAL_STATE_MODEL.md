# ============================================================
# GLOBAL STATE
# MODEL
# ============================================================

status: draft
layer: model
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for global world state.

# 2. CORE ENTITIES

- global_state_snapshot
- global_indicator
- global_alert_state
- global_adjustment_flag

# 3. STATE MODEL

global_state_snapshot:
- snapshot_id
- world_id
- captured_at
- snapshot_status

global_indicator:
- indicator_id
- snapshot_id
- indicator_code
- indicator_value
- indicator_unit

global_alert_state:
- alert_id
- snapshot_id
- alert_type_code
- severity_code
- alert_status

global_adjustment_flag:
- flag_id
- snapshot_id
- adjustment_scope
- adjustment_reason
- active_flag

# 4. INTEGRITY RULES

- indicators belong to one snapshot
- alerts must reference one snapshot
- adjustment flag must preserve reason
- snapshot must be time-bounded

