# ============================================================
# BANK PAYMENT CONFIRMATION FLOW
# ============================================================

status: canonical
layer: flow
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

steps:
1. import bank transactions
2. create match candidates
3. review candidate
4. confirm payment
5. run simple reconciliation
6. issue receipt when allowed
