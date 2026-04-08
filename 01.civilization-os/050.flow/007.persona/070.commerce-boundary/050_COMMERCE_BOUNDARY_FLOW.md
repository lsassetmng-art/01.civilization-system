# ============================================================
# COMMERCE BOUNDARY
# FLOW
# ============================================================

status: draft
layer: flow
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for persona commerce boundaries.

# 2. TRIGGER

- sale permission request
- listing/publication request
- settlement update

# 3. MAIN FLOW

1. resolve commerce_permission
2. validate market and sale scope
3. create or update sale_unit
4. apply commerce_restriction where required
5. persist settlement_reference where applicable
6. emit audit trace

# 4. FAILURE FLOW

- missing commerce permission -> reject
- invalid market scope -> reject
- sale under restriction -> fail closed

# 5. OUTPUT

- sale state
- restriction state
- settlement reference

