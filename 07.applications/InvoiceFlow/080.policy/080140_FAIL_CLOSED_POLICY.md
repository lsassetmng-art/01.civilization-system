# ============================================================
# FAIL CLOSED POLICY
# ============================================================

status: canonical
layer: policy
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

rules:
- if invoice authority is unclear, block reflective operation
- if amount or target mapping is unclear, block confirmation/finalization
- if receipt precondition is missing, do not issue receipt
