# ============================================================
# REFERENCE DETAIL
# MODEL
# ============================================================

status: draft
layer: model
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for reference detail structures.

# 2. CORE ENTITIES

- reference_detail_record
- reference_target
- reference_rule
- reference_status

# 3. STATE MODEL

reference_detail_record:
- reference_detail_record_id
- detail_definition_id
- reference_scope
- reference_type_code
- reference_status

reference_target:
- reference_target_id
- reference_detail_record_id
- target_scope
- target_code
- target_status

reference_rule:
- reference_rule_id
- reference_detail_record_id
- rule_type_code
- rule_value
- rule_status

reference_status:
- reference_status_id
- reference_detail_record_id
- active_flag
- revised_flag
- changed_at

# 4. INTEGRITY RULES

- reference target and rule must belong to one reference detail record
- reference scope must be explicit
- active and revised state must be explicit
- hidden reference-detail mutation is prohibited

