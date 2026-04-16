# ============================================================
# INVOICE FLOW INFRASTRUCTURE
# ============================================================

status: canonical
layer: infrastructure
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

dependencies:
- application data store
- PDF generation/storage service
- bank transaction ingestion service
- shared ERP reflection service
- notification service
