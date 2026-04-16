# ============================================================
# EXPENSE STORAGE INFRASTRUCTURE
# ============================================================

status: canonical
layer: infrastructure
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

components:
- draft store
- evidence object storage reference
- policy snapshot cache
- ERP result store
