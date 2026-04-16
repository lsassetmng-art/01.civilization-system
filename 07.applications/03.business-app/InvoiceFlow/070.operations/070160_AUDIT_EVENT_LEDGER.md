# ============================================================
# AUDIT EVENT LEDGER
# ============================================================

status: canonical
layer: operations
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines auditable business events.

audit_events:
- FRONT_INVOICE_CREATED
- FRONT_INVOICE_UPDATED
- INVOICE_PDF_GENERATED
- INVOICE_SEND_REQUESTED
- PAYMENT_MANUAL_CONFIRMED
- PAYMENT_BANK_MATCH_CONFIRMED
- PAYMENT_DIFFERENCE_OVERRIDDEN
- RECEIPT_ISSUED
- RECEIPT_REISSUED
- COLLECTION_ACTION_RECORDED
- COLLECTION_ESCALATED
- ERP_REFLECTION_REQUESTED
- ERP_REFLECTION_RETRIED
- ERP_REFLECTION_FAILED
- ERP_REFLECTION_SYNCED

minimum_event_fields:
- event_code
- company_id
- actor_user_id
- target_type
- target_id
- occurred_at
- before_json when applicable
- after_json when applicable
