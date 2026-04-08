# ============================================================
# TRIPLE GOVERNOR
# POLICY
# ============================================================

status: draft
layer: policy
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for Triple governor behavior.

# 2. POLICY RULES

- Triple may act only through declared adjustment channels
- authority mode must be explicit
- every adjustment requires preserved reason trace
- hidden direct mutation is prohibited

# 3. FAILURE RULE

- undeclared adjustment channel must reject
- missing reason trace must reject
- authority ambiguity must reject

