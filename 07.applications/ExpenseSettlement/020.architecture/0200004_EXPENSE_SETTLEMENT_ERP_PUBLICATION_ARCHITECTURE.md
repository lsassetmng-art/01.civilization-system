# ============================================================
# EXPENSE SETTLEMENT ERP PUBLICATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

publication_rules:
- publication is explicit
- no direct ERP database write
- request / result are stored separately
- idempotent request key is mandatory
- failure stays visible until resolved
