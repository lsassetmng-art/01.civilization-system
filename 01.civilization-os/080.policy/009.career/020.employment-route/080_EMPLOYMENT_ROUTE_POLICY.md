# ============================================================
# EMPLOYMENT ROUTE
# POLICY
# ============================================================

status: draft
layer: policy
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for employment route structures.

# 2. POLICY RULES

- route scope, deterministic stage order, and condition set must be explicit
- active and revised route state must be explicit
- hidden employment-route mutation is prohibited
- implicit route publication without resolved stages/conditions is prohibited

# 3. FAILURE RULE

- missing route scope must reject
- invalid stage or condition binding must reject
- hidden employment-route mutation must reject

