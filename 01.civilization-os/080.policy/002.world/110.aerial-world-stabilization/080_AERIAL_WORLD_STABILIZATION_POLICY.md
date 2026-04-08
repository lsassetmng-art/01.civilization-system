# ============================================================
# AERIAL WORLD STABILIZATION
# POLICY
# ============================================================

status: draft
layer: policy
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for Aerial world stabilization.

# 2. POLICY RULES

- Aerial acts only within assistive authority boundary
- escalation requires explicit target and reason
- support action must remain distinct from stronger intervention path
- hidden direct control through support path is prohibited

# 3. FAILURE RULE

- invalid escalation target must reject
- missing escalation reason must reject
- authority confusion must reject

