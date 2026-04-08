# ============================================================
# AUTHENTICATION
# POLICY
# ============================================================

status: draft
layer: policy
domain: 014.security
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for authentication structures.

# 2. POLICY RULES

- auth scope, factor set, and session state must be explicit
- active and blocked authentication state must be explicit
- hidden authentication mutation is prohibited
- implicit authentication execution while blocked is prohibited

# 3. FAILURE RULE

- missing auth scope must reject
- invalid factor or session binding must reject
- hidden authentication mutation must reject

