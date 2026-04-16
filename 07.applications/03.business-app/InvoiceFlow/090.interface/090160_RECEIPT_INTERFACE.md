# ============================================================
# RECEIPT INTERFACE
# ============================================================

status: canonical
layer: interface
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines receipt detail and receipt action interface.

screen_id: IF-SCR-100

sections:

- section_name: receipt_summary
  fields:
  - receipt_issue_id
  - receipt_number
  - issue_type_code
  - language_code
  - currency_code
  - issued_at
  - issued_by
  - receipt_status_code

- section_name: linked_payment
  fields:
  - payment_confirmation_id
  - confirmation_source_type
  - confirmed_payment_date
  - confirmed_amount
  - fee_amount
  - difference_amount

- section_name: linked_invoice
  fields:
  - invoice_case_id
  - invoice_number_local
  - erp_invoice_number
  - customer_name
  - invoice_authority_type

- section_name: actions
  actions:
  - view_receipt_pdf
  - reissue_receipt_when_allowed

- section_name: history
  fields:
  - prior_receipt_number
  - prior_issue_date
  - reissue_reason
  - actor

design_rules:
- receipt and linked payment must be understandable on one screen
- reissue must not hide original linkage
