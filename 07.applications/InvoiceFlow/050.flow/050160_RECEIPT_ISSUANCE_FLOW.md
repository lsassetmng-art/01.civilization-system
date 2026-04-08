# ============================================================
# RECEIPT ISSUANCE FLOW
# ============================================================

status: canonical
layer: flow
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

steps:
1. locate confirmed payment
2. validate receipt policy
3. generate receipt record
4. generate receipt PDF
5. store audit log
