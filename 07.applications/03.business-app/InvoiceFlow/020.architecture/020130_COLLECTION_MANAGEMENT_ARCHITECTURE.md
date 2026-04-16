# ============================================================
# COLLECTION MANAGEMENT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

collection_scope:
- overdue tracking
- collection due date
- dunning history
- priority collection flag
- customer outstanding summary
- collection priority visualization

design_principle:
Collection management is not a separate application.
It is an integrated part of InvoiceFlow.
