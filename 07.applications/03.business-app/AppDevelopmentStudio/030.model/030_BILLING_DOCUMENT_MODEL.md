# ============================================================
# BILLING DOCUMENT MODEL
# ============================================================

status: canonical-draft
layer: model
system: applications
application: App Development Studio
owner: Boss
prepared_by: Zero

purpose:
Defines invoice, receipt, and tax-display document model.

document_types:
- invoice
- receipt
- subscription_statement

core_fields:
- billing_document_id
- account_id
- document_type
- issue_date
- billing_period_start
- billing_period_end
- invoice_number
- receipt_number
- currency_code
- subtotal_amount_jpy
- tax_amount_jpy
- total_amount_jpy
- tax_included_flag
- tax_rate_label
- billing_plan_type
- billing_cycle_type
- payment_status
- provider_reference
- internal_reference
- note

model_principles:
- invoice and receipt must be distinguishable
- subtotal, tax, and total must be separable
- tax-included display must be explicit
- billing period must be understandable
- provider/internal references must remain separable
