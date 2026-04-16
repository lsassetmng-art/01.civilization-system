# ============================================================
# COLLECTION FOLLOW-UP FLOW
# ============================================================

status: canonical
layer: flow
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

steps:
1. detect overdue status
2. compute/update collection priority
3. set collection due date
4. record dunning history
5. update promise-to-pay or escalation state
6. close when paid/resolved
