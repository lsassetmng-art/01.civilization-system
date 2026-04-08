# ============================================================
# GOVERNANCE DETAIL
# MODEL
# ============================================================

status: draft
layer: model
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for governance details.

# 2. CORE ENTITIES

- governance_policy
- decision_channel
- approval_matrix
- governance_action_state

# 3. STATE MODEL

governance_policy:
- governance_policy_id
- government_unit_id
- policy_type_code
- policy_version
- policy_status

decision_channel:
- decision_channel_id
- government_unit_id
- channel_type_code
- channel_scope
- channel_status

approval_matrix:
- approval_matrix_id
- government_unit_id
- matrix_type_code
- matrix_version
- matrix_status

governance_action_state:
- governance_action_state_id
- government_unit_id
- action_type_code
- action_status
- changed_at

# 4. INTEGRITY RULES

- governance structures must bind one government unit
- channel and matrix must be explicit
- action state must preserve government identity
- hidden governance mutation is prohibited

