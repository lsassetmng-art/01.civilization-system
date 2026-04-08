# ============================================================
# NAVIGATION
# MODEL
# ============================================================

status: draft
layer: model
domain: 019.interface
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for navigation structures.

# 2. CORE ENTITIES

- navigation_definition
- navigation_target
- navigation_rule
- navigation_status

# 3. STATE MODEL

navigation_definition:
- navigation_definition_id
- interface_definition_id
- navigation_scope
- navigation_type_code
- navigation_status

navigation_target:
- navigation_target_id
- navigation_definition_id
- target_scope
- target_code
- target_status

navigation_rule:
- navigation_rule_id
- navigation_definition_id
- rule_type_code
- rule_value
- rule_status

navigation_status:
- navigation_status_id
- navigation_definition_id
- active_flag
- blocked_flag
- changed_at

# 4. INTEGRITY RULES

- target and rule must belong to one navigation definition
- navigation scope must be explicit
- active and blocked state must be explicit
- hidden navigation mutation is prohibited

