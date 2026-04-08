# ============================================================
# CLASSIFICATION
# MODEL
# ============================================================

status: draft
layer: model
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for classification structures.

# 2. CORE ENTITIES

- classification_record
- classification_target_reference
- classification_rule
- classification_status

# 3. STATE MODEL

classification_record:
- classification_record_id
- meta_definition_id
- classification_scope
- classification_type_code
- classification_status

classification_target_reference:
- classification_target_reference_id
- classification_record_id
- target_scope
- target_code
- target_status

classification_rule:
- classification_rule_id
- classification_record_id
- rule_type_code
- rule_value
- rule_status

classification_status:
- classification_status_id
- classification_record_id
- active_flag
- revised_flag
- changed_at

# 4. INTEGRITY RULES

- target reference and rule must belong to one classification record
- classification scope must be explicit
- active and revised state must be explicit
- hidden classification mutation is prohibited

