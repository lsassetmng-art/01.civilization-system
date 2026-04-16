# ============================================================
# EXPENSE EVIDENCE SECURITY
# ============================================================

status: canonical
layer: security
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

rules:
- evidence access is least-privilege
- evidence replacement requires auditable transition
- content hash is retained for integrity support
