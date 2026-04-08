# ============================================================
# REWARD DISTRIBUTION
# MODEL
# ============================================================

status: draft
layer: model
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for reward distribution.

# 2. CORE ENTITIES

- reward_distribution_record
- reward_distribution_target
- reward_distribution_result
- reward_distribution_failure

# 3. STATE MODEL

reward_distribution_record:
- distribution_id
- reward_definition_id
- distribution_scope
- distribution_status
- distributed_at

reward_distribution_target:
- target_id
- distribution_id
- target_scope
- target_type_code
- target_status

reward_distribution_result:
- result_id
- distribution_id
- target_id
- result_code
- applied_at

reward_distribution_failure:
- failure_id
- distribution_id
- target_id
- failure_reason
- failure_status

# 4. INTEGRITY RULES

- target belongs to one distribution
- result/failure must reference one target
- distribution status must be explicit
- partial silent distribution is prohibited

