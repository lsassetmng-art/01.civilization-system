# ============================================================
# STATUS CODE MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

invoice_status_codes:
- DRAFT
- PDF_READY
- SENT_REQUESTED
- SENT
- PAYMENT_WAITING
- PARTIALLY_PAID
- PAID
- OVERDUE
- CLOSED
- CANCELLED

payment_confirmation_status_codes:
- UNCONFIRMED
- BANK_MATCH_CANDIDATE
- BANK_MATCH_CONFIRMED
- MANUAL_CONFIRMED
- PARTIAL_CONFIRMED
- DIFFERENCE_FOUND
- RECEIPT_ISSUED
- CLOSED

collection_status_codes:
- NONE
- MONITORING
- FOLLOW_UP_REQUIRED
- COLLECTION_SCHEDULED
- CONTACTED
- PROMISED
- ESCALATED
- RESOLVED

erp_reflection_status_codes:
- ERP_NOT_APPLICABLE
- ERP_MASTER_REFERENCE
- ERP_PAYMENT_SYNC_READY
- ERP_PAYMENT_SYNCED
- ERP_SYNC_FAILED
