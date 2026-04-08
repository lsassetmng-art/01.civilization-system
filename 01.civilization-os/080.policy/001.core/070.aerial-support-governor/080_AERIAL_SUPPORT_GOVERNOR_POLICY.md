# ============================================================
# AERIAL SUPPORT GOVERNOR
# POLICY
# ============================================================

status: draft
layer: policy
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for Aerial support behavior.

# 2. POLICY RULES

- Aerial is assistive, not direct-control authoritative
- escalation must preserve explicit target and reason
- support output must remain distinguishable from stronger governance action
- hidden intervention is prohibited

# 3. FAILURE RULE

- direct control through support path must reject
- missing escalation reason must reject
- authority confusion must reject

