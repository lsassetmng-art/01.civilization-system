# ============================================================
# EXPENSE FAILURE OPERATIONS
# ============================================================

status: canonical
layer: operations
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

failure_views:
- sync_failed
- erp_failed
- evidence_unreadable
- duplicate_suspected
- policy_validation_blocked
