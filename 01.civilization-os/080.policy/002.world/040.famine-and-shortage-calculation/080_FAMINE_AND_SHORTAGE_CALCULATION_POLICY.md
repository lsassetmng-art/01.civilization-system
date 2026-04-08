# ============================================================
# FAMINE AND SHORTAGE CALCULATION
# POLICY
# ============================================================

status: draft
layer: policy
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for famine and shortage calculation.

# 2. POLICY RULES

- supply state must be region-bound
- threshold rule must be explicit
- famine risk and shortage impact must preserve region scope
- partial risk publication is prohibited

# 3. FAILURE RULE

- missing supply state must reject
- ambiguous threshold rule must reject
- inconsistent impact scope must reject

