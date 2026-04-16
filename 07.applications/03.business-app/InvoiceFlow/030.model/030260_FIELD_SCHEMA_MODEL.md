# ============================================================
# FIELD SCHEMA MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

key_schema_notes:
- invoice_origin_type distinguishes FRONT_LOCAL and ERP_MASTER
- erp_link_eligibility governs ERP reflection possibility
- confirmation_source_type distinguishes BANK_LINKED and MANUAL
- receipt issuance depends on confirmed payment
