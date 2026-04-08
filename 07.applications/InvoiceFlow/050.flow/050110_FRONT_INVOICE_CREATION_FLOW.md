# ============================================================
# FRONT INVOICE CREATION FLOW
# ============================================================

status: canonical
layer: flow
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

steps:
1. create front invoice draft
2. edit invoice lines
3. validate totals and due date
4. generate invoice PDF
5. request/send delivery
6. wait for payment
7. manage collection if overdue
