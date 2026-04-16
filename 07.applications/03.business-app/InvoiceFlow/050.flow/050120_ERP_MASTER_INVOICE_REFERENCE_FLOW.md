# ============================================================
# ERP MASTER INVOICE REFERENCE FLOW
# ============================================================

status: canonical
layer: flow
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

steps:
1. reference ERP-master invoice
2. display invoice facts in InvoiceFlow
3. confirm payment through bank/manual path
4. reflect payment result through shared ERP capability
5. update local visibility and audit
