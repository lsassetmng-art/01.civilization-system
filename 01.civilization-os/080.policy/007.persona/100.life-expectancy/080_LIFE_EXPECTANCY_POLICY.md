# ============================================================
# LIFE EXPECTANCY
# POLICY
# ============================================================

status: draft
layer: policy
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for persona life expectancy.

# 2. POLICY RULES

- expectancy profile must be explicit per measurement point
- expectancy factor provenance must be attributable
- adjustment requires explicit reason
- hidden expectancy mutation is prohibited

# 3. FAILURE RULE

- missing profile must reject
- ambiguous factor provenance must reject
- hidden expectancy mutation must reject

