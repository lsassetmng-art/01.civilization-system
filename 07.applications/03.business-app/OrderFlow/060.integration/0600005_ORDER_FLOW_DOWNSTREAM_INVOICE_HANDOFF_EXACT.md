# ============================================================
# ORDER FLOW DOWNSTREAM INVOICE HANDOFF EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines future downstream handoff from OrderFlow to invoice-side flow.

handoff_position:
  upstream:
    - OrderFlow
  downstream_candidates:
    - InvoiceFlow
    - ERP billing flow
    - receivable-side downstream management

handoff_trigger_candidates:
  - order closed after delivered_completed
  - order closed after business_completed
  - manager-approved billing-ready state

minimum_handoff_payload_meaning:
  required:
    - company_id
    - order_id
    - order_number
    - customer_snapshot_summary
    - currency_code
    - total_amount
    - delivered_scope_summary
    - closure_reason_type
    - source_order_trace
  optional:
    - source_estimate_link_summary
    - shipment_summary
    - delivery_confirmation_summary
    - billing_hint_note

handoff_rules:
  - invoice identity remains separate from order identity
  - same-record promotion is forbidden
  - downstream billing app decides billing-side canonical state
  - OrderFlow remains source of execution completion context, not invoice authority

future_note:
  - billing-ready exact status is intentionally deferred
  - this document fixes boundary only

