# ============================================================
# STORY ARC
# FLOW
# ============================================================

status: draft
layer: flow
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for story arc handling.

# 2. TRIGGER

- arc creation/update
- phase update
- arc condition update
- arc close/open request

# 3. MAIN FLOW

1. create or resolve story_arc
2. bind arc_phase set
3. bind arc_condition set
4. validate deterministic phase order and arc scope
5. persist arc_status
6. emit audit trace

# 4. FAILURE FLOW

- missing arc scope -> reject
- invalid phase or condition binding -> reject
- hidden arc mutation -> fail closed

# 5. OUTPUT

- arc state
- phase/condition state
- audit record

