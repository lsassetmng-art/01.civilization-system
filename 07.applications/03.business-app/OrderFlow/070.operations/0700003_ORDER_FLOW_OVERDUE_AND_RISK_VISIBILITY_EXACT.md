# ============================================================
# ORDER FLOW OVERDUE AND RISK VISIBILITY EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines overdue and risk visibility semantics in OrderFlow.

overdue_and_risk_visibility:

  proposal_overdue:
    meaning:
      - customer response has not been recorded within expected follow-up window
    typical_source_state:
      - customer_proposed

  shipment_overdue:
    meaning:
      - shipment request has not progressed as expected within execution window
    typical_source_state:
      - shipment_requested

  delivery_overdue:
    meaning:
      - delivery confirmation has not been recorded within expected post-shipment window
    typical_source_state:
      - shipped

  order_overdue:
    meaning:
      - order remains operationally incomplete beyond expected business timeline
    typical_source_state:
      - any open nonterminal state except closed and canceled

  risk_visibility_summary_fields:
    recommended_fields:
      - risk_type
      - risk_level
      - days_overdue
      - related_due_at
      - next_expected_action
      - assigned_actor_ref

risk_design_rules:
  - overdue is visibility, not automatic state mutation
  - overdue does not automatically close or cancel order
  - risk summary should help the operator decide next action quickly
  - multiple risk signals may coexist for one order

