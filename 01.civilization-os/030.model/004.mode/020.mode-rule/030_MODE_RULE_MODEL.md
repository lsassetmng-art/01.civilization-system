# ============================================================
# MODE RULE
# MODEL
# ============================================================

status: draft
layer: model
domain: 004.mode
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for mode rules.

# 2. CORE ENTITIES

- mode_rule_set
- mode_rule_item
- mode_rule_condition
- mode_rule_status

# 3. STATE MODEL

mode_rule_set:
- mode_rule_set_id
- mode_definition_id
- rule_scope
- rule_type_code
- rule_status

mode_rule_item:
- mode_rule_item_id
- mode_rule_set_id
- item_code
- item_value
- item_status

mode_rule_condition:
- mode_rule_condition_id
- mode_rule_set_id
- condition_type_code
- condition_value
- condition_status

mode_rule_status:
- mode_rule_status_id
- mode_rule_set_id
- active_flag
- revised_flag
- changed_at

# 4. INTEGRITY RULES

- rule item and condition must belong to one rule set
- rule scope must be explicit
- active and revised state must be explicit
- hidden mode-rule mutation is prohibited

