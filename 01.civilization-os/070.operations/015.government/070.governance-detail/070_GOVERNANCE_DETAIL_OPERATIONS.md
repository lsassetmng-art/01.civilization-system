# ============================================================
# GOVERNANCE DETAIL
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for governance details.

# 2. OPERATIONAL CONTROLS

- governance-policy review
- decision-channel review
- approval-matrix inspection
- governance-action audit inspection

# 3. FAILURE OPERATIONS

- missing required channel or matrix -> reject
- invalid action transition -> block
- hidden governance mutation -> fail closed

