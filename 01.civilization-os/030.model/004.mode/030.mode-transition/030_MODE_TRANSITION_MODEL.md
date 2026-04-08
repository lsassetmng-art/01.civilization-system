# ============================================================
# MODE TRANSITION
# MODEL
# ============================================================

status: draft
layer: model
domain: 004.mode
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for mode transitions.

# 2. CORE ENTITIES

- mode_transition
- transition_trigger
- transition_guard
- transition_status

# 3. STATE MODEL

mode_transition:
- mode_transition_id
- mode_definition_id
- from_mode_code
- to_mode_code
- transition_status

transition_trigger:
- transition_trigger_id
- mode_transition_id
- trigger_type_code
- trigger_value
- trigger_status

transition_guard:
- transition_guard_id
- mode_transition_id
- guard_type_code
- guard_value
- guard_status

transition_status:
- transition_status_id
- mode_transition_id
- active_flag
- blocked_flag
- changed_at

# 4. INTEGRITY RULES

- trigger and guard must belong to one transition
- from/to mode must be explicit
- active and blocked state must be explicit
- hidden transition mutation is prohibited

