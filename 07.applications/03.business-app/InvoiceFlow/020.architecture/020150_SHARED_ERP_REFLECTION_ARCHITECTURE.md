# ============================================================
# SHARED ERP REFLECTION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

rules:
- ERP reflection uses shared BusinessOS capability
- direct ERP bypass is forbidden
- front-created invoices are not reflected as ERP invoice master
- ERP-master invoices may receive payment-result reflection
- reflection result must return to InvoiceFlow for visibility and audit
