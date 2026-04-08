# ============================================================
# TRIPLE WORLD INTERVENTION
# POLICY
# ============================================================

status: draft
layer: policy
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for Triple world intervention.

# 2. POLICY RULES

- intervention channel must be declared before use
- authority mode must be explicit
- reason trace is mandatory for every intervention
- hidden undeclared intervention is prohibited

# 3. FAILURE RULE

- undeclared channel must reject
- missing trace must reject
- ambiguous authority mode must reject

