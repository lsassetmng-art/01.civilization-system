# ============================================================
# HIRING
# POLICY
# ============================================================

status: draft
layer: policy
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for hiring structures.

# 2. POLICY RULES

- employer scope, candidate scope, and decision state must be explicit
- hiring record publication requires explicit hiring decision
- hidden hiring mutation is prohibited
- implicit hire creation without decision path is prohibited

# 3. FAILURE RULE

- missing employer or candidate scope must reject
- invalid candidate binding must reject
- hidden hiring mutation must reject

