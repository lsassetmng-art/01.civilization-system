# ============================================================
# DEATH AND MORTALITY CALCULATION
# POLICY
# ============================================================

status: draft
layer: policy
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for mortality calculation.

# 2. POLICY RULES

- mortality profile must be explicit
- mortality output must preserve region and period scope
- aggregate must persist before impact publication
- ambiguous severity source is prohibited

# 3. FAILURE RULE

- missing profile must reject
- inconsistent aggregate must reject
- ambiguous severity must reject

