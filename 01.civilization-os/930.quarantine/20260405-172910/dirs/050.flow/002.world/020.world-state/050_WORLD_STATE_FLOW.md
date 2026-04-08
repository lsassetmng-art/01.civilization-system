# ============================================================
# WORLD STATE
# FLOW
# ============================================================

status: draft
layer: flow
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for world state handling.

# 2. TRIGGER

- world state update
- condition update
- metric update
- freeze/unfreeze request

# 3. MAIN FLOW

1. create or resolve world_state_record
2. bind world_condition_state set
3. bind world_metric_state set
4. validate state scope and frozen/active state
5. persist world_state_status
6. emit audit trace

# 4. FAILURE FLOW

- missing state scope -> reject
- invalid condition or metric binding -> reject
- hidden world-state mutation -> fail closed

# 5. OUTPUT

- world state record
- condition/metric state
- audit record

