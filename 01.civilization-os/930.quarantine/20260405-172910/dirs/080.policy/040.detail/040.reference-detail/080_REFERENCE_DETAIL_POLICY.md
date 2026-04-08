# ============================================================
# REFERENCE DETAIL
# POLICY
# ============================================================

status: draft
layer: policy
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for reference detail structures.

# 2. POLICY RULES

- reference scope, targets, and rules must be explicit
- active and revised reference-detail state must be explicit
- hidden reference-detail mutation is prohibited
- implicit reference publication without resolved targets/rules is prohibited

# 3. FAILURE RULE

- missing reference scope must reject
- invalid target or rule binding must reject
- hidden reference-detail mutation must reject

