# ============================================================
# OCCUPATION SYSTEM
# POLICY
# ============================================================

status: draft
layer: policy
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for occupation system structures.

# 2. POLICY RULES

- occupation scope, family identity, and rule set must be explicit
- active and revised state must be explicit
- hidden occupation mutation is prohibited
- implicit occupation activation without resolved family/rule context is prohibited

# 3. FAILURE RULE

- missing occupation or family scope must reject
- invalid rule binding must reject
- hidden occupation mutation must reject

