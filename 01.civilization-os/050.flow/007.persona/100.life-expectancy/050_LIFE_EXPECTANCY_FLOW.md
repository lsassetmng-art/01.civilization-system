# ============================================================
# LIFE EXPECTANCY
# FLOW
# ============================================================

status: draft
layer: flow
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for persona life expectancy updates.

# 2. TRIGGER

- expectancy review cycle
- major health/life-risk update
- explicit recalculation request

# 3. MAIN FLOW

1. resolve active expectancy_profile
2. collect expectancy_factor set
3. calculate expectancy_state
4. apply expectancy_adjustment where required
5. persist profile/state changes
6. emit audit trace

# 4. FAILURE FLOW

- missing profile -> reject
- ambiguous factor provenance -> reject
- hidden expectancy mutation -> fail closed

# 5. OUTPUT

- expectancy state
- adjustment state
- audit record

