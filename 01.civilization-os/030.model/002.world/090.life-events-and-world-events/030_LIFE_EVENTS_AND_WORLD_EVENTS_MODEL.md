# ============================================================
# LIFE EVENTS AND WORLD EVENTS
# MODEL
# ============================================================

status: draft
layer: model
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for life events and world events.

# 2. CORE ENTITIES

- world_event
- life_event
- event_trigger
- event_effect_record

# 3. STATE MODEL

world_event:
- event_id
- event_type_code
- event_scope
- occurred_at
- event_status

life_event:
- life_event_id
- subject_scope
- event_type_code
- occurred_at
- event_status

event_trigger:
- trigger_id
- trigger_type_code
- source_scope
- trigger_status

event_effect_record:
- effect_id
- event_id
- effect_type_code
- effect_value
- target_scope

# 4. INTEGRITY RULES

- every effect must reference one event
- world and life events must preserve scope
- trigger source must be explicit
- event status must be explicit

