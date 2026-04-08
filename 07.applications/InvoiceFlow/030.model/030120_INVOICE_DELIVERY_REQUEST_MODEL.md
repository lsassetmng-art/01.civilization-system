# ============================================================
# INVOICE DELIVERY REQUEST MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

fields:
- invoice_delivery_request_id
- invoice_case_id
- delivery_channel_code
- requested_by
- requested_at
- sent_at
- recipient_snapshot
- delivery_status_code
