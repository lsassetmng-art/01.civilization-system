# ============================================================
# ORDER FLOW TO INVOICEFLOW RECEIVER BOUNDARY
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines the receiver-side boundary assumptions for InvoiceFlow
when accepting downstream handoff from OrderFlow.

receiver_boundary:

  sender_system:
    - OrderFlow

  receiver_system:
    - InvoiceFlow

  sender_responsibility:
    - provide execution-completion context
    - provide delivered scope summary
    - provide closure context
    - provide customer snapshot summary needed for billing start

  receiver_responsibility:
    - create billing-side canonical record
    - determine invoice-side lifecycle
    - validate billing readiness under invoice rules
    - keep invoice identity separate from order identity

  fixed_rules:
    - order_id and invoice_id are separate
    - same-record promotion is forbidden
    - OrderFlow does not become billing authority
    - InvoiceFlow does not mutate OrderFlow identity

  minimum_receiver_expectation:
    - company scope available
    - order identity available
    - currency context available
    - total amount available
    - delivered or business-completed context available
    - customer billing summary available

  intentionally_deferred:
    - final InvoiceFlow schema exact
    - final InvoiceFlow invoice state exact
    - ERP billing sync exact on InvoiceFlow side

