# ============================================================
# ORDER FLOW REMINDER AND FOLLOWUP RULES EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines reminder and follow-up rules for customer proposal,
shipment, and delivery stages.

reminder_and_followup_rules:

  customer_proposal_followup:
    trigger_condition:
      - order_state is customer_proposed
      - no accepted or rejected response recorded yet
    reminder_examples:
      - remind operator to follow up customer response
      - show waiting days since last proposal
    due_basis:
      - proposal_recorded_at plus policy-defined followup days

  shipment_request_followup:
    trigger_condition:
      - order_state is shipment_requested
      - shipment_status stays requested or pending_response too long
    reminder_examples:
      - remind operator to confirm warehouse acceptance
      - highlight request with no downstream answer
    due_basis:
      - requested_at plus policy-defined response window

  delivery_confirmation_followup:
    trigger_condition:
      - shipment execution exists
      - delivery confirmation still missing after expected window
    reminder_examples:
      - remind operator to confirm receipt or delivery result
    due_basis:
      - shipment_execution_date plus policy-defined confirmation window

  sync_followup:
    trigger_condition:
      - sync_state is failed
      - or sync_state is pending for too long
    reminder_examples:
      - remind operator that local save succeeded but external sync still needs attention
    due_basis:
      - last_attempt_at plus retry policy window

followup_design_rules:
  - followup must be business-stage aware
  - reminder should point to the next operator action
  - reminder generation policy may be configured later, but event meaning is fixed here

