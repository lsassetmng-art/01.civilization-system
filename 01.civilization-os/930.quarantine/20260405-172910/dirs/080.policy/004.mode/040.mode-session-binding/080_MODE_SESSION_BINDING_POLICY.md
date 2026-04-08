# ============================================================
# MODE SESSION BINDING
# POLICY
# ============================================================

status: draft
layer: policy
domain: 004.mode
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for mode session bindings.

# 2. POLICY RULES

- mode scope, session scope, and constraints must be explicit
- active and blocked session-binding state must be explicit
- hidden session-binding mutation is prohibited
- implicit session execution while blocked is prohibited

# 3. FAILURE RULE

- missing mode or session scope must reject
- invalid reference or constraint binding must reject
- hidden session-binding mutation must reject

