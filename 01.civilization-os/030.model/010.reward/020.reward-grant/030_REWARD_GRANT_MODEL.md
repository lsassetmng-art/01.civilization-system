# ============================================================
# REWARD GRANT
# MODEL
# ============================================================

status: draft
layer: model
domain: 010.reward
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for reward grants.

# 2. CORE ENTITIES

- reward_grant
- reward_grant_source
- reward_grant_target
- reward_grant_status

# 3. STATE MODEL

reward_grant:
- reward_grant_id
- reward_definition_id
- grant_type_code
- grant_value
- grant_status

reward_grant_source:
- source_id
- reward_grant_id
- source_scope
- source_type_code
- source_status

reward_grant_target:
- target_id
- reward_grant_id
- target_scope
- target_type_code
- target_status

reward_grant_status:
- status_id
- reward_grant_id
- approval_status
- applied_status
- changed_at

# 4. INTEGRITY RULES

- grant must preserve source and target scope
- grant value must be explicit
- applied status must follow approval state
- unauthorized grant is prohibited

