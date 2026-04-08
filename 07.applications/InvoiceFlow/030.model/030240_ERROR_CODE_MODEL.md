# ============================================================
# ERROR CODE MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

error_codes:
- INVOICE_REQUIRED_FIELD_MISSING
- INVOICE_AMOUNT_INVALID
- INVOICE_AUTHORITY_INVALID
- INVOICE_ERP_REFLECTION_NOT_ALLOWED
- PAYMENT_CONFIRMATION_CONFLICT
- BANK_MATCH_NOT_CONFIDENT
- RECEIPT_ISSUANCE_NOT_ALLOWED
- COLLECTION_TARGET_INVALID
- ERP_REFLECTION_FAILED
