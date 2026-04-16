# ============================================================
# COLLECTION PRIORITY POLICY
# ============================================================

status: canonical
layer: policy
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

rules:
- overdue days and outstanding amount are primary drivers
- high risk cases should surface first
- collection priority logic must be explainable to operators
