# ============================================================
# OCCUPATION SYSTEM
# MODEL
# ============================================================

status: draft
layer: model
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for occupation system structures.

# 2. CORE ENTITIES

- occupation_definition
- occupation_family
- occupation_rule
- occupation_status

# 3. STATE MODEL

occupation_definition:
- occupation_definition_id
- occupation_code
- occupation_type_code
- occupation_scope
- occupation_status

occupation_family:
- occupation_family_id
- family_code
- family_scope
- family_status
- version_code

occupation_rule:
- occupation_rule_id
- occupation_definition_id
- rule_type_code
- rule_value
- rule_status

occupation_status:
- occupation_status_id
- occupation_definition_id
- active_flag
- revised_flag
- changed_at

# 4. INTEGRITY RULES

- occupation rule must belong to one occupation definition
- occupation and family scope must be explicit
- active and revised state must be explicit
- hidden occupation mutation is prohibited

