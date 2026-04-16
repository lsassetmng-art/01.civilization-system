# ============================================================
# INVOICE BOUNDARY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

invoice_categories:
- FRONT_LOCAL
- ERP_MASTER

boundary_rules:
- FRONT_LOCAL invoices can produce invoice PDF.
- FRONT_LOCAL invoices cannot become ERP invoice master.
- ERP_MASTER invoices are mastered by ERP.
- InvoiceFlow may display and operate around ERP_MASTER invoices.
- ERP reflection eligibility depends on invoice category and policy.
