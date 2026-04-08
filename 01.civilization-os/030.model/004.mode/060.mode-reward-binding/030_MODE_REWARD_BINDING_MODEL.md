# ============================================================
# MODE REWARD BINDING
# MODEL
# ============================================================

status: draft
layer: model
domain: 004.mode
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for mode reward bindings.

# 2. CORE ENTITIES

- mode_reward_binding
- reward_reference
- reward_rule
- reward_binding_status

# 3. STATE MODEL

mode_reward_binding:
- mode_reward_binding_id
- mode_definition_id
- binding_scope
- reward_type_code
- binding_status

reward_reference:
- reward_reference_id
- mode_reward_binding_id
- reward_scope
- reward_code
- reference_status

reward_rule:
- reward_rule_id
- mode_reward_binding_id
- rule_type_code
- rule_value
- rule_status

reward_binding_status:
- reward_binding_status_id
- mode_reward_binding_id
- active_flag
- blocked_flag
- changed_at

# 4. INTEGRITY RULES

- reward reference and rule must belong to one binding
- reward scope must be explicit
- active and blocked state must be explicit
- hidden reward-binding mutation is prohibited

