# ============================================================
# INPUT BINDING
# POLICY
# ============================================================

status: draft
layer: policy
domain: 019.interface
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for input binding structures.

# 2. POLICY RULES

- input scope, targets, and rules must be explicit
- active and blocked input state must be explicit
- hidden input-binding mutation is prohibited
- implicit input execution while blocked is prohibited

# 3. FAILURE RULE

- missing input scope must reject
- invalid target or rule binding must reject
- hidden input-binding mutation must reject

