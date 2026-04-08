# ============================================================
# PAYMENT SCHEDULE MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

fields:
- payment_schedule_id
- invoice_case_id
- scheduled_payment_date
- scheduled_amount
- payment_method_code
- installment_no
- memo
