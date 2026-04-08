# ============================================================
# MAPPING RULE
# MODEL
# ============================================================

status: draft
layer: model
domain: 012.integration
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for mapping rules.

# 2. CORE ENTITIES

- mapping_rule_set
- mapping_field_rule
- mapping_transform_rule
- mapping_status

# 3. STATE MODEL

mapping_rule_set:
- mapping_rule_set_id
- integration_definition_id
- mapping_scope
- mapping_type_code
- mapping_status

mapping_field_rule:
- mapping_field_rule_id
- mapping_rule_set_id
- field_code
- field_value_ref
- field_status

mapping_transform_rule:
- mapping_transform_rule_id
- mapping_rule_set_id
- rule_type_code
- rule_value
- rule_status

mapping_status:
- mapping_status_id
- mapping_rule_set_id
- active_flag
- revised_flag
- changed_at

# 4. INTEGRITY RULES

- field rule and transform rule must belong to one mapping rule set
- mapping scope must be explicit
- active and revised state must be explicit
- hidden mapping mutation is prohibited

