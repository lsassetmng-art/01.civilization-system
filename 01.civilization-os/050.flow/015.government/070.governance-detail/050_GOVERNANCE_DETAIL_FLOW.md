# ============================================================
# GOVERNANCE DETAIL
# FLOW
# ============================================================

status: draft
layer: flow
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for governance details.

# 2. TRIGGER

- policy update
- decision-channel update
- approval-matrix update
- governance action review

# 3. MAIN FLOW

1. resolve governance_policy set
2. resolve decision_channel set
3. resolve approval_matrix
4. validate governance_action_state transitions
5. persist updated governance state
6. emit audit trace

# 4. FAILURE FLOW

- missing required channel or matrix -> reject
- invalid action transition -> reject
- hidden governance mutation -> fail closed

# 5. OUTPUT

- governance detail state
- action state
- audit record

