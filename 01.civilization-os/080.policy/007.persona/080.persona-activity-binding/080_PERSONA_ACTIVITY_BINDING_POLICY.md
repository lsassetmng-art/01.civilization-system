# ============================================================
# PERSONA ACTIVITY BINDING
# POLICY
# ============================================================

status: draft
layer: policy
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for persona activity bindings.

# 2. POLICY RULES

- persona scope, activity scope, and rule set must be explicit
- active and blocked activity-binding state must be explicit
- hidden activity-binding mutation is prohibited
- implicit activity execution while blocked is prohibited

# 3. FAILURE RULE

- missing persona or activity scope must reject
- invalid reference or rule binding must reject
- hidden activity-binding mutation must reject

