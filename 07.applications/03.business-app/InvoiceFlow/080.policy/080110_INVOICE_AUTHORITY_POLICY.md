# ============================================================
# INVOICE AUTHORITY POLICY
# ============================================================

status: canonical
layer: policy
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

rules:
- ERP-master invoice authority belongs to ERP
- front invoice authority belongs only to InvoiceFlow operational scope
- front invoice must not masquerade as ERP-master invoice
