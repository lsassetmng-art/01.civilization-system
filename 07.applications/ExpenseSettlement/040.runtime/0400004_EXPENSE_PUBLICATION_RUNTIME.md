# ============================================================
# EXPENSE PUBLICATION RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

publication_runtime:
- queue request
- validate authority
- validate policy snapshot
- emit ERP request
- persist result
- retry with visibility
- stop on terminal failure
