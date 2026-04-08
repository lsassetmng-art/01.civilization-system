# ============================================================
# AUTHORIZATION
# POLICY
# ============================================================

status: draft
layer: policy
domain: 014.security
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for authorization structures.

# 2. POLICY RULES

- authorization scope, subject set, and rules must be explicit
- active and blocked authorization state must be explicit
- hidden authorization mutation is prohibited
- implicit authorization execution while blocked is prohibited

# 3. FAILURE RULE

- missing authorization or subject scope must reject
- invalid subject or rule binding must reject
- hidden authorization mutation must reject

