# ============================================================
# ACCESS CONTROL
# POLICY
# ============================================================

status: draft
layer: policy
domain: 014.security
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for access control structures.

# 2. POLICY RULES

- access scope, subject set, and permission rules must be explicit
- active and blocked access-control state must be explicit
- hidden access-control mutation is prohibited
- implicit access execution while blocked is prohibited

# 3. FAILURE RULE

- missing access or subject scope must reject
- invalid subject or permission binding must reject
- hidden access-control mutation must reject

