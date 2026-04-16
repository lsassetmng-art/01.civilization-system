# ============================================================
# EXPENSE QUEUE INFRASTRUCTURE
# ============================================================

status: canonical
layer: infrastructure
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

queues:
- sync pending queue
- ERP publish queue
- retry queue
- review backlog projection
