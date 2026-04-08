# ============================================================
# EXPENSE SETTLEMENT APPLICATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

architecture:
- draft workspace
- receipt evidence manager
- approval state manager
- policy validator
- ERP publication gateway
- pending operation queue
- sync state tracker
- audit trail writer

core_boundary:
- app side handles interaction and staging
- ERP side handles accounting truth
- PocketSecretary side handles reminder and candidate support
