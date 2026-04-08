# ============================================================
# REVENUE
# MODEL
# ============================================================

status: draft
layer: model
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for revenues.

# 2. CORE ENTITIES

- revenue_record
- revenue_source_state
- revenue_allocation
- revenue_settlement_ref

# 3. STATE MODEL

revenue_record:
- revenue_id
- revenue_type_code
- revenue_scope
- revenue_value
- revenue_status

revenue_source_state:
- source_state_id
- revenue_id
- source_scope
- source_type_code
- source_status

revenue_allocation:
- allocation_id
- revenue_id
- allocation_scope
- allocation_value
- allocation_status

revenue_settlement_ref:
- settlement_ref_id
- revenue_id
- settlement_batch_id
- settlement_status
- settled_at

# 4. INTEGRITY RULES

- revenue source must be explicit
- allocation must reference one revenue record
- settlement reference must preserve revenue identity
- hidden revenue mutation is prohibited

