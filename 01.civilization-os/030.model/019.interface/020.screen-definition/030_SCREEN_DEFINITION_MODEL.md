# ============================================================
# SCREEN DEFINITION
# MODEL
# ============================================================

status: draft
layer: model
domain: 019.interface
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for screen definitions.

# 2. CORE ENTITIES

- screen_definition
- screen_section
- screen_rule
- screen_status

# 3. STATE MODEL

screen_definition:
- screen_definition_id
- interface_definition_id
- screen_scope
- screen_type_code
- screen_status

screen_section:
- screen_section_id
- screen_definition_id
- section_code
- section_order
- section_status

screen_rule:
- screen_rule_id
- screen_definition_id
- rule_type_code
- rule_value
- rule_status

screen_status:
- screen_status_id
- screen_definition_id
- active_flag
- revised_flag
- changed_at

# 4. INTEGRITY RULES

- section and rule must belong to one screen definition
- screen scope must be explicit
- section order must be deterministic
- hidden screen mutation is prohibited

