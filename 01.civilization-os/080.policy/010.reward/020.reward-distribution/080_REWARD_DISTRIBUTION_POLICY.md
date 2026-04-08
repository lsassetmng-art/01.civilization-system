# ============================================================
# REWARD DISTRIBUTION
# POLICY
# ============================================================

status: draft
layer: policy
domain: 010.reward
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for reward distributions.

# 2. POLICY RULES

- every distribution target must be explicit
- result or failure must be recorded for every target
- silent partial distribution is prohibited
- final distribution status must be explicit

# 3. FAILURE RULE

- missing target scope must reject
- partial silent distribution must reject
- ambiguous batch state must reject

