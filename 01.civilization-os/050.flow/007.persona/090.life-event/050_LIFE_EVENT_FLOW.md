# ============================================================
# LIFE EVENT
# FLOW
# ============================================================

status: draft
layer: flow
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for persona life events.

# 2. TRIGGER

- life-event trigger activation
- manual event creation request
- life-event review cycle

# 3. MAIN FLOW

1. resolve persona and trigger source
2. create persona_life_event
3. calculate life_event_effect set
4. persist life_event_state
5. emit audit trace

# 4. FAILURE FLOW

- missing trigger source -> reject
- ambiguous event scope -> reject
- partial effect/state publication -> fail closed

# 5. OUTPUT

- life-event record
- effect set
- event state

