# ============================================================
# EXPENSE AUTHORITY SECURITY
# ============================================================

status: canonical
layer: security
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

rules:
- applicant may edit draft before submit
- approver may not impersonate applicant
- finance publication authority is explicit
- approval actions are audit-logged
