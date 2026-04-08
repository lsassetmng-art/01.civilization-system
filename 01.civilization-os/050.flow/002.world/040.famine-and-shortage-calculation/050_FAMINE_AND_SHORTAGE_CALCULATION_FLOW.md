# ============================================================
# FAMINE AND SHORTAGE CALCULATION
# FLOW
# ============================================================

status: draft
layer: flow
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for famine and shortage calculation.

# 2. TRIGGER

- food supply update
- shortage review cycle
- explicit famine risk recalculation

# 3. MAIN FLOW

1. resolve food_supply_state by region
2. apply shortage thresholds
3. calculate famine_risk_state
4. calculate shortage impact by target scope
5. persist risk and impact records
6. emit audit trace

# 4. FAILURE FLOW

- missing supply state -> reject
- ambiguous threshold rule -> reject
- inconsistent risk scope -> fail closed

# 5. OUTPUT

- famine risk state
- shortage impact record
- audit record

