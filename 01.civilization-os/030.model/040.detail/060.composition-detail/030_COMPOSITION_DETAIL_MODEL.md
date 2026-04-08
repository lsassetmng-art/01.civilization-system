# ============================================================
# COMPOSITION DETAIL
# MODEL
# ============================================================

status: draft
layer: model
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for composition detail structures.

# 2. CORE ENTITIES

- composition_detail_record
- composition_item
- composition_rule
- composition_status

# 3. STATE MODEL

composition_detail_record:
- composition_detail_record_id
- detail_definition_id
- composition_scope
- composition_type_code
- composition_status

composition_item:
- composition_item_id
- composition_detail_record_id
- item_code
- item_value
- item_status

composition_rule:
- composition_rule_id
- composition_detail_record_id
- rule_type_code
- rule_value
- rule_status

composition_status:
- composition_status_id
- composition_detail_record_id
- active_flag
- revised_flag
- changed_at

# 4. INTEGRITY RULES

- composition item and rule must belong to one composition detail record
- composition scope must be explicit
- active and revised state must be explicit
- hidden composition-detail mutation is prohibited

