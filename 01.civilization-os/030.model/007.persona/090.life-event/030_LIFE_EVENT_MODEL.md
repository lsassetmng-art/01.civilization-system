# ============================================================
# LIFE EVENT
# MODEL
# ============================================================

status: draft
layer: model
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for persona life events.

# 2. CORE ENTITIES

- persona_life_event
- life_event_trigger
- life_event_effect
- life_event_state

# 3. STATE MODEL

persona_life_event:
- life_event_id
- persona_id
- event_type_code
- event_scope
- occurred_at

life_event_trigger:
- trigger_id
- persona_id
- trigger_type_code
- source_scope
- trigger_status

life_event_effect:
- effect_id
- life_event_id
- effect_type_code
- effect_value
- target_scope

life_event_state:
- state_id
- life_event_id
- state_code
- state_status
- changed_at

# 4. INTEGRITY RULES

- life event must preserve persona scope
- trigger source must be explicit
- effect must reference one life event
- partial life-event state without event is prohibited

