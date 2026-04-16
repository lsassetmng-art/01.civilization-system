# ============================================================
# ORDER FLOW VALIDATION RULES CLOSURE AND STATE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines validation rules for closure, cancellation,
and state-transition control.

validation_rules:

  close_order:
    required:
      - company_id
      - order_id
      - closure.closure_reason_type
    constraints:
      closure_reason_type:
        allowed_values:
          - business_completed
          - delivered_completed
          - mutually_canceled_remainder
          - administrative_close
      closure_note:
        must_be:
          - optional_but_recommended
    forbidden:
      - closing already closed order
      - silent close with unresolved remaining scope and no explicit closure reason
      - close without operator intent
    readiness_expectations:
      - delivery summary reviewed
      - remaining quantity explained
      - unresolved issue summary reviewed

  cancel_order:
    required:
      - company_id
      - order_id
      - cancel_reason
    constraints:
      cancel_reason:
        must_be:
          - non_empty_string
    forbidden:
      - cancel closed order in normal mode
      - cancel after irreversible downstream handling unless explicit admin rule exists

  state_transition_general:
    constraints:
      allowed_primary_path:
        - draft_to_confirmed
        - confirmed_to_inventory_checked
        - inventory_checked_to_delivery_date_calculated
        - delivery_date_calculated_to_customer_proposed
        - customer_proposed_to_customer_confirmed
        - customer_confirmed_to_shipment_requested
        - shipment_requested_to_shipped
        - shipped_to_delivered
        - delivered_to_closed
      allowed_exception_examples:
        - draft_to_canceled
        - confirmed_to_canceled
        - customer_proposed_to_delivery_date_calculated
        - customer_confirmed_to_customer_proposed
    forbidden:
      - direct draft_to_closed
      - direct confirmed_to_closed without explicit administrative exception
      - implicit delivered_to_closed without closure action
      - state mutation without status history record

  sync_and_error_visibility:
    constraints:
      local_save_and_external_sync_must_be_separated:
        - true
      validation_error_must_point_to_field_when_possible:
        - true
      authorization_error_must_not_leak_sensitive_detail:
        - true

