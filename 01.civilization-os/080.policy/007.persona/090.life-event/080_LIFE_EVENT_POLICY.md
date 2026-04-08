# ============================================================
# LIFE EVENT
# POLICY
# ============================================================

status: draft
layer: policy
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for persona life events.

# 2. POLICY RULES

- trigger source must be explicit
- life-event scope must preserve persona identity
- effect target scope must be explicit
- partial life-event publication is prohibited

# 3. FAILURE RULE

- missing trigger source must reject
- ambiguous event scope must reject
- partial publication must reject

