# ============================================================
# GOVERNANCE DETAIL
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for governance details.

# 2. RUNTIME STATE

- active governance-policy state
- decision-channel resolution state
- approval-matrix resolution state
- governance-action transition state

# 3. EXECUTION RULES

- required channel and matrix must resolve before action transition
- governance-action state must preserve government identity
- action publication requires validated approval path
- hidden governance mutation is prohibited

# 4. FAILURE HANDLING

- missing required channel or matrix -> reject
- invalid action transition -> reject
- hidden governance mutation -> fail closed

