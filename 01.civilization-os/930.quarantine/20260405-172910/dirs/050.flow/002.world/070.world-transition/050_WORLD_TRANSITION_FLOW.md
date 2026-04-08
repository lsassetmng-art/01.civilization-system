# ============================================================
# WORLD TRANSITION
# FLOW
# ============================================================

status: draft
layer: flow
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for world transition handling.

# 2. TRIGGER

- transition create/update
- trigger update
- guard update
- block/unblock request

# 3. MAIN FLOW

1. create or resolve world_transition
2. bind transition_trigger set
3. bind transition_guard set
4. validate from/to state and transition safety
5. persist transition_status
6. emit audit trace

# 4. FAILURE FLOW

- missing from/to state -> reject
- invalid trigger or guard binding -> reject
- hidden world-transition mutation -> fail closed

# 5. OUTPUT

- transition state
- trigger/guard/status
- audit record

