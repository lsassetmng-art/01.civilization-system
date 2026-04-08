# ============================================================
# LIFE EVENTS AND WORLD EVENTS
# POLICY
# ============================================================

status: draft
layer: policy
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for life and world events.

# 2. POLICY RULES

- trigger source must be explicit
- event scope must be validated before publication
- effect target scope must be explicit
- partial effect publication is prohibited

# 3. FAILURE RULE

- missing trigger source must reject
- ambiguous event scope must reject
- inconsistent effect target must reject

