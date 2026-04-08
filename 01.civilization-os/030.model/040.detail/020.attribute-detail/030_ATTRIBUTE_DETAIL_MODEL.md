# ============================================================
# ATTRIBUTE DETAIL
# MODEL
# ============================================================

status: draft
layer: model
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for attribute detail structures.

# 2. CORE ENTITIES

- attribute_detail_record
- attribute_item
- attribute_rule
- attribute_status

# 3. STATE MODEL

attribute_detail_record:
- attribute_detail_record_id
- detail_definition_id
- attribute_scope
- attribute_type_code
- attribute_status

attribute_item:
- attribute_item_id
- attribute_detail_record_id
- item_code
- item_value
- item_status

attribute_rule:
- attribute_rule_id
- attribute_detail_record_id
- rule_type_code
- rule_value
- rule_status

attribute_status:
- attribute_status_id
- attribute_detail_record_id
- active_flag
- revised_flag
- changed_at

# 4. INTEGRITY RULES

- attribute item and rule must belong to one attribute detail record
- attribute scope must be explicit
- active and revised state must be explicit
- hidden attribute-detail mutation is prohibited

