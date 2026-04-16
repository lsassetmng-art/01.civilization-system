# ============================================================
# INVOICE DETAIL INTERFACE
# ============================================================

status: canonical
layer: interface
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines invoice detail screen fields and actions.

screen_id: IF-SCR-030

sections:

- section_name: invoice_summary
  fields:
  - invoice_case_id
  - invoice_number_local
  - erp_invoice_number
  - title
  - customer_name
  - language_code
  - currency_code
  - invoice_date
  - payment_due_date
  - subtotal_amount
  - tax_amount
  - total_amount

- section_name: authority_and_status
  fields:
  - invoice_origin_type
  - invoice_authority_type
  - erp_link_eligibility
  - invoice_status_code
  - collection_status_code
  - overdue_days
  - priority_collection_flag
  display_rules:
  - FRONT_LOCAL badge must be obvious
  - ERP_MASTER badge must be obvious
  - ERP non-eligible warning must be obvious

- section_name: line_items
  fields:
  - line_no
  - item_name
  - quantity
  - unit_price
  - tax_code
  - line_amount
  - remarks

- section_name: document_actions
  actions:
  - generate_invoice_pdf
  - view_invoice_pdf
  - request_send
  - view_send_history

- section_name: payment_and_collection
  fields:
  - payment_status_summary
  - confirmed_amount_total
  - outstanding_amount
  - collection_due_date
  - next_action_date
  actions:
  - go_to_payment_confirmation
  - go_to_collection_detail

- section_name: receipt_history
  fields:
  - receipt_number
  - issued_at
  - receipt_status_code
  actions:
  - open_receipt_detail

- section_name: erp_reflection
  fields:
  - reflection_status
  - last_reflection_at
  - last_reflection_error
  actions:
  - request_reflection_when_allowed

primary_actions:
- edit_front_invoice_when_allowed
- generate_or_view_pdf
- request_send
- confirm_payment
- open_collection
- open_receipt

blocking_notices:
- front-created invoice cannot become ERP invoice master
- ERP reflection eligibility must be checked before reflective action
