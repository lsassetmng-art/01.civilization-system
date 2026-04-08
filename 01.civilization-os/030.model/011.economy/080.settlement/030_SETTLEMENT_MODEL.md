# ============================================================
# SETTLEMENT
# MODEL
# ============================================================

status: draft
layer: model
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for settlement.

# 2. CORE ENTITIES

- settlement_batch
- settlement_item
- settlement_result
- settlement_reconciliation

# 3. STATE MODEL

settlement_batch:
- settlement_batch_id
- batch_scope
- settlement_cycle_code
- batch_status
- opened_at

settlement_item:
- settlement_item_id
- settlement_batch_id
- item_scope
- settlement_value
- item_status

settlement_result:
- settlement_result_id
- settlement_item_id
- result_code
- settled_at
- result_status

settlement_reconciliation:
- reconciliation_id
- settlement_batch_id
- reconciliation_status
- reconciled_at
- discrepancy_value

# 4. INTEGRITY RULES

- settlement item belongs to one batch
- result must reference one item
- reconciliation must reference one batch
- silent discrepancy is prohibited

