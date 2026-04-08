# ============================================================
# RECONCILIATION
# MODEL
# ============================================================

status: draft
layer: model
domain: 012.integration
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for reconciliation structures.

# 2. CORE ENTITIES

- reconciliation_job
- reconciliation_item
- reconciliation_difference
- reconciliation_status

# 3. STATE MODEL

reconciliation_job:
- reconciliation_job_id
- integration_definition_id
- reconciliation_scope
- reconciliation_type_code
- reconciliation_status

reconciliation_item:
- reconciliation_item_id
- reconciliation_job_id
- item_code
- item_ref
- item_status

reconciliation_difference:
- reconciliation_difference_id
- reconciliation_job_id
- difference_code
- difference_value
- difference_status

reconciliation_status:
- reconciliation_status_id
- reconciliation_job_id
- active_flag
- resolved_flag
- changed_at

# 4. INTEGRITY RULES

- item and difference must belong to one reconciliation job
- reconciliation scope must be explicit
- active and resolved state must be explicit
- hidden reconciliation mutation is prohibited

