# ============================================================
# MILITARY SERVICE AND MOBILIZATION
# POLICY
# ============================================================

status: draft
layer: policy
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for military service and mobilization.

# 2. POLICY RULES

- service obligation, order scope, and mobilization status must be explicit
- hidden mobilization without order is prohibited
- invalid obligation binding must block execution
- implicit mobilization expansion is prohibited

# 3. FAILURE RULE

- missing order scope must reject
- invalid obligation binding must reject
- hidden mobilization without order must reject

