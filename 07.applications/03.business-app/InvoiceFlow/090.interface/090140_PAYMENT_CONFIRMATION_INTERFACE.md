# ============================================================
# PAYMENT CONFIRMATION INTERFACE
# ============================================================

status: canonical
layer: interface
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines payment confirmation screen structure.

screen_ids:
- IF-SCR-060
- IF-SCR-070

common_fields:
- invoice_case_id
- invoice_number_local
- erp_invoice_number
- customer_name
- currency_code
- invoice_total_amount
- confirmed_amount_total
- outstanding_amount
- payment_due_date
- invoice_status_code

bank_linked_section:
  fields:
  - bank_account_name
  - transaction_date
  - transaction_name
  - transaction_amount
  - candidate_confidence
  - bank_transaction_id
  actions:
  - accept_candidate
  - reject_candidate
  - mark_for_review

manual_section:
  fields:
  - confirmed_payment_date
  - confirmed_amount
  - fee_amount
  - difference_amount
  - manual_receipt_note
  - evidence_file_id
  - confirmed_by
  actions:
  - confirm_manually
  - save_draft_if_supported

reconciliation_section:
  fields:
  - matched_amount
  - difference_amount
  - reconciliation_status_code
  - partial_payment_flag
  display_rules:
  - difference and partial states must be highlighted

receipt_section:
  fields:
  - receipt_policy_state
  - existing_receipt_count
  actions:
  - issue_receipt_when_allowed

warnings:
- ambiguous bank match must not auto-finalize
- manual confirmation requires actor traceability
- receipt requires confirmed payment
