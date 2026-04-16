# ============================================================
# ORDER FLOW TO INVOICEFLOW BILLING READY RULES
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines candidate billing-ready rules before downstream handoff to InvoiceFlow.

billing_ready_rules:

  normally_ready_when:
    - order_state is closed
    - closure_reason_type is one of:
      - delivered_completed
      - business_completed
    - currency_code exists
    - total_amount exists
    - customer billing summary exists

  may_be_blocked_when:
    - remaining_quantity_exists is true and not explicitly accepted by closure reason
    - billing-side customer summary is incomplete
    - total amount is missing
    - order is canceled without billing policy allowing invoice creation
    - sync/error posture indicates unresolved business incompleteness

  manual_override_candidate:
    - order_manager approved billing handoff
    - future policy may allow exceptional billing-ready override

  sender_side_note:
    - OrderFlow determines handoff eligibility candidate
    - InvoiceFlow still decides invoice-side acceptance

