# ============================================================
# PERSONA PREFERENCE
# POLICY
# ============================================================

status: draft
layer: policy
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for persona preference structures.

# 2. POLICY RULES

- preference scope, item set, and priority set must be explicit
- active and revised preference state must be explicit
- hidden preference mutation is prohibited
- implicit preference publication without resolved priorities is prohibited

# 3. FAILURE RULE

- missing preference scope must reject
- invalid item or priority binding must reject
- hidden preference mutation must reject

