# ============================================================
# STORY ARC
# POLICY
# ============================================================

status: draft
layer: policy
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for story arcs.

# 2. POLICY RULES

- arc scope, phase order, and condition set must be explicit
- active and closed arc state must be explicit
- hidden arc mutation is prohibited
- implicit arc publication without deterministic phase order is prohibited

# 3. FAILURE RULE

- missing arc scope must reject
- invalid phase or condition binding must reject
- hidden arc mutation must reject

