# ============================================================
# REWARD DEFINITION
# MODEL
# ============================================================

status: draft
layer: model
domain: 010.reward
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for reward definitions.

# 2. CORE ENTITIES

- reward_definition
- reward_source
- reward_condition
- reward_value_set

# 3. STATE MODEL

reward_definition:
- reward_definition_id
- reward_code
- reward_type_code
- reward_status
- version_code

reward_source:
- reward_source_id
- reward_definition_id
- source_scope
- source_type_code
- source_status

reward_condition:
- reward_condition_id
- reward_definition_id
- condition_type_code
- condition_value
- condition_status

reward_value_set:
- reward_value_set_id
- reward_definition_id
- value_type_code
- value_amount
- value_status

# 4. INTEGRITY RULES

- reward code must be explicit
- source must belong to one reward definition
- reward condition must be attributable
- reward value set must be version-compatible

