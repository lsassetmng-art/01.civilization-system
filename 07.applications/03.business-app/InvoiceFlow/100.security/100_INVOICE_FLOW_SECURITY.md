# ============================================================
# INVOICE FLOW SECURITY
# ============================================================

status: canonical
layer: security
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

security_rules:
- company-scoped access is mandatory
- payment confirmation requires elevated action permission
- receipt issuance requires traceable actor
- ERP reflection requires explicit capability permission
