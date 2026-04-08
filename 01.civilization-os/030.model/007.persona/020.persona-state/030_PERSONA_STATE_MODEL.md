# ============================================================
# PERSONA STATE
# MODEL
# ============================================================

status: draft
layer: model
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for persona state structures.

# 2. CORE ENTITIES

- persona_state_record
- persona_condition_state
- persona_mood_state
- persona_state_status

# 3. STATE MODEL

persona_state_record:
- persona_state_record_id
- persona_definition_id
- state_scope
- state_version
- state_status

persona_condition_state:
- persona_condition_state_id
- persona_state_record_id
- condition_type_code
- condition_value
- condition_status

persona_mood_state:
- persona_mood_state_id
- persona_state_record_id
- mood_code
- mood_value
- mood_status

persona_state_status:
- persona_state_status_id
- persona_state_record_id
- active_flag
- frozen_flag
- changed_at

# 4. INTEGRITY RULES

- condition and mood state must belong to one persona state record
- state scope must be explicit
- active and frozen state must be explicit
- hidden persona-state mutation is prohibited

