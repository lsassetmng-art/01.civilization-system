# ============================================================
# ERP MASTER INVOICE RUNTIME
# ============================================================

status: canonical
layer: runtime
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

rules:
- ERP-master invoice identity is external-authority backed
- InvoiceFlow may track payment and collection around it
- payment result reflection to ERP is allowed through shared capability
