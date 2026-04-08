# ============================================================
# ANNOTATION
# MODEL
# ============================================================

status: draft
layer: model
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for annotation structures.

# 2. CORE ENTITIES

- annotation_record
- annotation_target_reference
- annotation_rule
- annotation_status

# 3. STATE MODEL

annotation_record:
- annotation_record_id
- meta_definition_id
- annotation_scope
- annotation_type_code
- annotation_status

annotation_target_reference:
- annotation_target_reference_id
- annotation_record_id
- target_scope
- target_code
- target_status

annotation_rule:
- annotation_rule_id
- annotation_record_id
- rule_type_code
- rule_value
- rule_status

annotation_status:
- annotation_status_id
- annotation_record_id
- active_flag
- revised_flag
- changed_at

# 4. INTEGRITY RULES

- target reference and rule must belong to one annotation record
- annotation scope must be explicit
- active and revised state must be explicit
- hidden annotation mutation is prohibited

