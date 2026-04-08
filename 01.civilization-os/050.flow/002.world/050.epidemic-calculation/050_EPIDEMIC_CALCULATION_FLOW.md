# ============================================================
# EPIDEMIC CALCULATION
# FLOW
# ============================================================

status: draft
layer: flow
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for epidemic calculation.

# 2. TRIGGER

- infection state update
- epidemic monitoring cycle
- explicit spread recalculation

# 3. MAIN FLOW

1. resolve epidemic profile
2. calculate infection state by region
3. evaluate epidemic wave start or continuation
4. calculate epidemic impact records
5. persist wave and impact state
6. emit audit trace

# 4. FAILURE FLOW

- missing spread profile -> reject
- inconsistent region/type binding -> reject
- ambiguous wave status -> fail closed

# 5. OUTPUT

- infection state
- epidemic wave state
- impact records

