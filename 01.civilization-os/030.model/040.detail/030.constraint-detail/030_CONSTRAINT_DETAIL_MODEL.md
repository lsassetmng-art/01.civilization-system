# ============================================================
# CONSTRAINT DETAIL
# MODEL
# ============================================================

status: draft
layer: model
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for constraint detail structures.

# 2. CORE ENTITIES

- constraint_detail_record
- constraint_item
- constraint_rule
- constraint_status

# 3. STATE MODEL

constraint_detail_record:
- constraint_detail_record_id
- detail_definition_id
- constraint_scope
- constraint_type_code
- constraint_status

constraint_item:
- constraint_item_id
- constraint_detail_record_id
- item_code
- item_value
- item_status

constraint_rule:
- constraint_rule_id
- constraint_detail_record_id
- rule_type_code
- rule_value
- rule_status

constraint_status:
- constraint_status_id
- constraint_detail_record_id
- active_flag
- blocked_flag
- changed_at

# 4. INTEGRITY RULES

- constraint item and rule must belong to one constraint detail record
- constraint scope must be explicit
- active and blocked state must be explicit
- hidden constraint-detail mutation is prohibited

