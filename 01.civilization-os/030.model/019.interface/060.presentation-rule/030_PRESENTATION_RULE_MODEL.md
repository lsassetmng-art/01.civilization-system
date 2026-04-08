# ============================================================
# PRESENTATION RULE
# MODEL
# ============================================================

status: draft
layer: model
domain: 019.interface
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for presentation rules.

# 2. CORE ENTITIES

- presentation_rule_set
- presentation_condition
- presentation_style_rule
- presentation_status

# 3. STATE MODEL

presentation_rule_set:
- presentation_rule_set_id
- interface_definition_id
- presentation_scope
- presentation_type_code
- presentation_status

presentation_condition:
- presentation_condition_id
- presentation_rule_set_id
- condition_type_code
- condition_value
- condition_status

presentation_style_rule:
- presentation_style_rule_id
- presentation_rule_set_id
- rule_type_code
- rule_value
- rule_status

presentation_status:
- presentation_status_id
- presentation_rule_set_id
- active_flag
- revised_flag
- changed_at

# 4. INTEGRITY RULES

- condition and style rule must belong to one presentation rule set
- presentation scope must be explicit
- active and revised state must be explicit
- hidden presentation mutation is prohibited

