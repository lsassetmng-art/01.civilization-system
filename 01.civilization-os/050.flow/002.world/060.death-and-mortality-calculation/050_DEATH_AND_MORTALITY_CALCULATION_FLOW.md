# ============================================================
# DEATH AND MORTALITY CALCULATION
# FLOW
# ============================================================

status: draft
layer: flow
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for mortality calculation.

# 2. TRIGGER

- mortality review cycle
- disaster/war/famine/epidemic impact update
- explicit mortality recalculation

# 3. MAIN FLOW

1. resolve mortality profile
2. calculate mortality_state by region
3. update death_record_aggregate
4. calculate mortality impact record
5. persist mortality result set
6. emit audit trace

# 4. FAILURE FLOW

- missing mortality profile -> reject
- inconsistent period aggregate -> reject
- ambiguous mortality severity -> fail closed

# 5. OUTPUT

- mortality state
- death aggregate
- mortality impact record

