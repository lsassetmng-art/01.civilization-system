# ============================================================
# WORLD TIME
# MODEL
# ============================================================

status: draft
layer: model
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for world time structures.

# 2. CORE ENTITIES

- world_time_definition
- time_phase
- time_rule
- time_status

# 3. STATE MODEL

world_time_definition:
- world_time_definition_id
- world_definition_id
- time_scope
- time_type_code
- time_status

time_phase:
- time_phase_id
- world_time_definition_id
- phase_code
- phase_order
- phase_status

time_rule:
- time_rule_id
- world_time_definition_id
- rule_type_code
- rule_value
- rule_status

time_status:
- time_status_id
- world_time_definition_id
- active_flag
- frozen_flag
- changed_at

# 4. INTEGRITY RULES

- phase and rule must belong to one world time definition
- time scope must be explicit
- phase order must be deterministic
- hidden world-time mutation is prohibited

