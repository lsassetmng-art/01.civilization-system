# ============================================================
# PERSONALITY EVOLUTION
# MODEL
# ============================================================

status: draft
layer: model
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for persona personality evolution.

# 2. CORE ENTITIES

- personality_profile
- personality_trait_state
- evolution_event
- evolution_result

# 3. STATE MODEL

personality_profile:
- profile_id
- persona_id
- profile_version
- profile_status
- measured_at

personality_trait_state:
- trait_state_id
- profile_id
- trait_code
- trait_value
- stability_code

evolution_event:
- evolution_event_id
- persona_id
- event_type_code
- event_scope
- occurred_at

evolution_result:
- result_id
- evolution_event_id
- changed_trait_code
- changed_value
- result_status

# 4. INTEGRITY RULES

- one active personality profile per measurement point
- trait state must belong to one profile
- evolution result must reference one event
- hidden trait mutation without event is prohibited

