# ============================================================
# PERSONA AUTHORITY
# POLICY
# ============================================================

status: draft
layer: policy
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for persona authority structures.

# 2. POLICY RULES

- authority scope, subject scope, and scope-rule set must be explicit
- active and suspended authority state must be explicit
- hidden authority mutation is prohibited
- implicit authority grant without resolved subject/rules is prohibited

# 3. FAILURE RULE

- missing subject or authority scope must reject
- invalid grant or rule binding must reject
- hidden authority mutation must reject

