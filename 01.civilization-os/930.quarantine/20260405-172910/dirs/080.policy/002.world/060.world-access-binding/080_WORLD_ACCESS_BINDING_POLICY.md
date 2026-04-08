# ============================================================
# WORLD ACCESS BINDING
# POLICY
# ============================================================

status: draft
layer: policy
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for world access bindings.

# 2. POLICY RULES

- world scope, subject scope, and rules must be explicit
- active and blocked access-binding state must be explicit
- hidden access-binding mutation is prohibited
- implicit access execution while blocked is prohibited

# 3. FAILURE RULE

- missing world or subject scope must reject
- invalid reference or rule binding must reject
- hidden access-binding mutation must reject

