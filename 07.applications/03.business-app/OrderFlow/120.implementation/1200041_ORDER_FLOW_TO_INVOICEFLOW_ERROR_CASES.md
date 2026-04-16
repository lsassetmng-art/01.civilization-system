# ============================================================
# ORDER FLOW TO INVOICEFLOW ERROR CASES
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines candidate error cases for downstream invoice handoff.

error_cases:

  not_billing_ready:
    meaning:
      - OrderFlow attempted handoff before billing-ready conditions
    suggested_error_code:
      - not_billing_ready

  receiver_validation_error:
    meaning:
      - InvoiceFlow rejected the payload because receiver-required fields are incomplete
    suggested_error_code:
      - receiver_validation_error

  duplicate_handoff_attempt:
    meaning:
      - a downstream invoice already exists for the same order and policy disallows duplicate creation
    suggested_error_code:
      - duplicate_handoff_attempt

  authorization_error:
    meaning:
      - actor lacks permission to initiate downstream handoff
    suggested_error_code:
      - authorization_error

  receiver_unavailable:
    meaning:
      - receiver system is unavailable or timed out
    suggested_error_code:
      - receiver_unavailable

response_envelope_candidate:
~~~json
{
  "ok": false,
  "error_code": "not_billing_ready",
  "message": "order is not ready for invoice handoff"
}
~~~

design_rules:
  - downstream failure must not mutate OrderFlow identity
  - handoff failure must stay operator-visible
  - duplicate control policy should be explicit later

