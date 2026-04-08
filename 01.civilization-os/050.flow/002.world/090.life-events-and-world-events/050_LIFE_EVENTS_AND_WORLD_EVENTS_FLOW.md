# ============================================================
# LIFE EVENTS AND WORLD EVENTS
# FLOW
# ============================================================

status: draft
layer: flow
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for life and world events.

# 2. TRIGGER

- event trigger activation
- scheduled event review
- explicit event injection request

# 3. MAIN FLOW

1. resolve event trigger
2. resolve target world or life scope
3. create world_event or life_event
4. calculate event effect records
5. persist event and effect state
6. emit audit trace

# 4. FAILURE FLOW

- missing trigger source -> reject
- ambiguous event scope -> reject
- inconsistent effect target -> fail closed

# 5. OUTPUT

- event record
- effect records
- audit record

