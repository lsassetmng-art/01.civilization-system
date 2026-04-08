# ============================================================
# WORLD SEED AND GEOGRAPHY
# FLOW
# ============================================================

status: draft
layer: flow
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for world seed and geography setup.

# 2. TRIGGER

- world initialization
- geography regeneration request
- seed review request

# 3. MAIN FLOW

1. resolve world_seed and version
2. generate or validate continent structure
3. generate or validate terrain zones
4. attach geography features
5. persist geography state
6. emit audit trace

# 4. FAILURE FLOW

- missing seed version -> reject
- invalid continent hierarchy -> reject
- terrain assignment inconsistency -> fail closed

# 5. OUTPUT

- geography structure
- zone and feature state
- seed audit record

