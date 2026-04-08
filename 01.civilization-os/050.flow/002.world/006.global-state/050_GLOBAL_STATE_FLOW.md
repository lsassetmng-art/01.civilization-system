# ============================================================
# GLOBAL STATE
# FLOW
# ============================================================

status: draft
layer: flow
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for global-state snapshot processing.

# 2. TRIGGER

- scheduled global-state refresh
- major world event
- governance or runtime review request

# 3. MAIN FLOW

1. open global_state_snapshot
2. collect active global indicators
3. resolve alert conditions
4. resolve adjustment flags where required
5. persist snapshot and alert state
6. emit audit trace

# 4. FAILURE FLOW

- incomplete indicator set -> reject
- conflicting alert severity -> reject
- ambiguous adjustment scope -> fail closed

# 5. OUTPUT

- persisted global snapshot
- alert state
- adjustment flag state

