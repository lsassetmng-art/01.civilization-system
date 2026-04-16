# ============================================================
# EXPENSE CONTRACT IMPLEMENTATION GUIDE
# ============================================================

status: canonical
layer: implementation
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

contract_rules:
- versioned request body
- idempotency key included
- explicit error surface
- retry without hidden mutation
