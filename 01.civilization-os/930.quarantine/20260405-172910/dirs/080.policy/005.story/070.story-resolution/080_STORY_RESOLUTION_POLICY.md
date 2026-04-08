# ============================================================
# STORY RESOLUTION
# POLICY
# ============================================================

status: draft
layer: policy
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for story resolutions.

# 2. POLICY RULES

- resolution scope, conditions, and results must be explicit
- active and closed resolution state must be explicit
- hidden resolution mutation is prohibited
- implicit resolution close without explicit result is prohibited

# 3. FAILURE RULE

- missing resolution scope must reject
- invalid condition or result binding must reject
- hidden resolution mutation must reject

