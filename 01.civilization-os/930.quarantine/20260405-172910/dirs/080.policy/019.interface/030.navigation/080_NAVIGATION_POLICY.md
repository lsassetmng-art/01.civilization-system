# ============================================================
# NAVIGATION
# POLICY
# ============================================================

status: draft
layer: policy
domain: 019.interface
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for navigation structures.

# 2. POLICY RULES

- navigation scope, targets, and rules must be explicit
- active and blocked navigation state must be explicit
- hidden navigation mutation is prohibited
- implicit navigation execution while blocked is prohibited

# 3. FAILURE RULE

- missing navigation scope must reject
- invalid target or rule binding must reject
- hidden navigation mutation must reject

