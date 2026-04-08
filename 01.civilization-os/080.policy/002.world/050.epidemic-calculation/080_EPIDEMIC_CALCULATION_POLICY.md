# ============================================================
# EPIDEMIC CALCULATION
# POLICY
# ============================================================

status: draft
layer: policy
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for epidemic calculation.

# 2. POLICY RULES

- epidemic profile and spread source must be explicit
- infection state must preserve region/type scope
- wave state must be explicit before impact publication
- ambiguous wave transition is prohibited

# 3. FAILURE RULE

- missing epidemic profile must reject
- ambiguous wave state must reject
- inconsistent region/type scope must reject

