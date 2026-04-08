# ============================================================
# WORLD TIME
# FLOW
# ============================================================

status: draft
layer: flow
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for world time handling.

# 2. TRIGGER

- time definition update
- phase update
- time rule update
- freeze/unfreeze request

# 3. MAIN FLOW

1. create or resolve world_time_definition
2. bind time_phase set
3. bind time_rule set
4. validate time scope and deterministic phase order
5. persist time_status
6. emit audit trace

# 4. FAILURE FLOW

- missing time scope -> reject
- invalid phase or rule binding -> reject
- hidden world-time mutation -> fail closed

# 5. OUTPUT

- time definition state
- phase/rule state
- audit record

