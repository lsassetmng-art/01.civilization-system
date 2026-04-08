# ============================================================
# INFRASTRUCTURE PLACEMENT
# FLOW
# ============================================================

status: draft
layer: flow
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for infrastructure placement.

# 2. TRIGGER

- placement request
- placement review cycle
- relocation or removal request

# 3. MAIN FLOW

1. resolve infrastructure_object
2. resolve placement_rule
3. validate region and coordinate scope
4. create or update placement_state
5. record placement_violation if validation fails
6. emit audit trace

# 4. FAILURE FLOW

- missing placement rule -> reject
- invalid coordinate scope -> reject
- region mismatch -> fail closed

# 5. OUTPUT

- placement state
- violation record where applicable
- audit record

