# ============================================================
# WORLD TRANSITION
# MODEL
# ============================================================

status: draft
layer: model
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for world transitions.

# 2. CORE ENTITIES

- world_transition
- transition_trigger
- transition_guard
- transition_status

# 3. STATE MODEL

world_transition:
- world_transition_id
- world_definition_id
- from_world_state_code
- to_world_state_code
- transition_status

transition_trigger:
- transition_trigger_id
- world_transition_id
- trigger_type_code
- trigger_value
- trigger_status

transition_guard:
- transition_guard_id
- world_transition_id
- guard_type_code
- guard_value
- guard_status

transition_status:
- transition_status_id
- world_transition_id
- active_flag
- blocked_flag
- changed_at

# 4. INTEGRITY RULES

- trigger and guard must belong to one world transition
- from/to state must be explicit
- active and blocked state must be explicit
- hidden world-transition mutation is prohibited

