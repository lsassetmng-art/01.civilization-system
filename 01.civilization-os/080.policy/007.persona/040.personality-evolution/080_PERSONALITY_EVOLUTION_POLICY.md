# ============================================================
# PERSONALITY EVOLUTION
# POLICY
# ============================================================

status: draft
layer: policy
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for personality evolution.

# 2. POLICY RULES

- personality mutation requires explicit evolution event
- one active profile per measurement point
- trait mutation source must be attributable
- hidden trait mutation is prohibited

# 3. FAILURE RULE

- missing active profile must reject
- ambiguous mutation source must reject
- hidden mutation without event must reject

