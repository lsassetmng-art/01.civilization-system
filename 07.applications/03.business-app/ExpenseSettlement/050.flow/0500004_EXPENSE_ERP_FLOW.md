# ============================================================
# EXPENSE ERP FLOW
# ============================================================

status: canonical
layer: flow
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

flow:
1. approved report selected for ERP publication
2. idempotent request is created
3. ERP contract request is sent
4. result is recorded
5. success moves to erp_confirmed
6. failure moves to erp_failed with retry visibility
