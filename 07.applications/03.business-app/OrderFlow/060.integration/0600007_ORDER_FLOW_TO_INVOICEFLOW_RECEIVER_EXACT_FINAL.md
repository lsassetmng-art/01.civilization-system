# ============================================================
# ORDER FLOW TO INVOICEFLOW RECEIVER EXACT FINAL
# ============================================================

status: final-receiver-candidate
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Provides the final receiver-side candidate contract for InvoiceFlow handoff.

final_receiver_contract:

  endpoint_name:
    - create_invoice_from_order_handoff

  sender_system:
    - order_flow

  receiver_system:
    - invoice_flow

  required_request_meaning:
    - company_id
    - order identity
    - closure context
    - customer billing summary
    - money summary
    - delivered scope summary

  fixed_rules:
    - order_id and invoice_id are separate
    - OrderFlow remains execution authority only
    - InvoiceFlow becomes billing-side authority
    - duplicate invoice prevention is receiver-side policy
    - receiver may reject non-billing-ready payloads

  accepted_billing_ready_basis:
    - closed order
    - delivered_completed or business_completed style closure
    - customer billing summary present
    - currency_code and total_amount present

  error_family:
    - not_billing_ready
    - receiver_validation_error
    - duplicate_handoff_attempt
    - authorization_error
    - receiver_unavailable

final_note:
  - OrderFlow side handoff design is now sufficient
  - remaining exact design belongs to InvoiceFlow-side canonical work

