# ============================================================
# MEASUREMENT DETAIL
# MODEL
# ============================================================

status: draft
layer: model
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for measurement detail structures.

# 2. CORE ENTITIES

- measurement_detail_record
- measurement_item
- measurement_rule
- measurement_status

# 3. STATE MODEL

measurement_detail_record:
- measurement_detail_record_id
- detail_definition_id
- measurement_scope
- measurement_type_code
- measurement_status

measurement_item:
- measurement_item_id
- measurement_detail_record_id
- item_code
- item_value
- item_status

measurement_rule:
- measurement_rule_id
- measurement_detail_record_id
- rule_type_code
- rule_value
- rule_status

measurement_status:
- measurement_status_id
- measurement_detail_record_id
- active_flag
- revised_flag
- changed_at

# 4. INTEGRITY RULES

- measurement item and rule must belong to one measurement detail record
- measurement scope must be explicit
- active and revised state must be explicit
- hidden measurement-detail mutation is prohibited

