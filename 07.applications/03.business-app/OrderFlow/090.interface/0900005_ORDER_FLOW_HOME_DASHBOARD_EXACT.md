# ============================================================
# ORDER FLOW HOME DASHBOARD EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines the exact role of the OrderFlow home dashboard.

home_dashboard_definition:

  primary_goal:
    - show current operational situation quickly
    - reveal what needs action next
    - provide direct access to high-frequency work

  main_sections:
    - summary_kpi_section
    - action_needed_section
    - overdue_risk_section
    - recent_orders_section
    - shipment_progress_section
    - quick_action_section

  summary_kpi_section:
    should_show:
      - open_order_count
      - waiting_customer_response_count
      - waiting_shipment_count
      - waiting_delivery_confirmation_count
      - overdue_order_count

  action_needed_section:
    should_show:
      - orders needing customer followup
      - orders needing shipment action
      - orders needing delivery confirmation
      - sync-failed items needing attention

  overdue_risk_section:
    should_show:
      - proposal_overdue_count
      - shipment_overdue_count
      - delivery_overdue_count
      - highest_risk_items

  recent_orders_section:
    should_show:
      - recently updated orders
      - recently created orders
      - recently closed orders if space allows

  shipment_progress_section:
    should_show:
      - requested count
      - accepted count
      - partially_shipped count
      - shipped count

  quick_action_section:
    should_show:
      - create_standalone_order
      - create_from_estimate_if_entry_context_exists
      - open_order_list
      - open_notifications
      - open_shipment_board

design_rules:
  - home is action-oriented, not decorative
  - operator should understand the next work within a few seconds
  - widgets should remain meaningful on mobile and dense on PC/tablet
  - order_detail_screen remains the execution hub, but home is the work triage hub

