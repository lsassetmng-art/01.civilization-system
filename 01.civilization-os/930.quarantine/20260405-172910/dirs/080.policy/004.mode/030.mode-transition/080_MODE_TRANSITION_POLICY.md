# ============================================================
# MODE TRANSITION
# POLICY
# ============================================================

status: draft
layer: policy
domain: 004.mode
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for mode transitions.

# 2. POLICY RULES

- from/to mode, triggers, and guards must be explicit
- active and blocked transition state must be explicit
- hidden transition mutation is prohibited
- implicit transition execution while blocked is prohibited

# 3. FAILURE RULE

- missing from/to mode must reject
- invalid trigger or guard binding must reject
- hidden transition mutation must reject

