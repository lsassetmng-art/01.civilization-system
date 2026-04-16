# ============================================================
# ORDER FLOW HOME WIDGET MAPPING EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines which response fields map to which home widgets.

home_widget_mapping:

  open_orders_kpi_widget:
    source_fields:
      - summary.open_order_count

  waiting_customer_response_kpi_widget:
    source_fields:
      - summary.waiting_customer_response_count

  waiting_shipment_kpi_widget:
    source_fields:
      - summary.waiting_shipment_count

  waiting_delivery_confirmation_kpi_widget:
    source_fields:
      - summary.waiting_delivery_confirmation_count

  overdue_orders_kpi_widget:
    source_fields:
      - summary.overdue_order_count

  shipment_progress_widget:
    source_fields:
      - shipment_progress.requested_count
      - shipment_progress.accepted_count
      - shipment_progress.partially_shipped_count
      - shipment_progress.shipped_count

  overdue_risk_widget:
    source_fields:
      - overdue_risk.proposal_overdue_count
      - overdue_risk.shipment_overdue_count
      - overdue_risk.delivery_overdue_count

  recent_orders_widget:
    source_fields:
      - recent_orders[].order_id
      - recent_orders[].order_number
      - recent_orders[].customer_name_snapshot
      - recent_orders[].order_state
      - recent_orders[].updated_at

  action_needed_widget:
    source_fields:
      - action_needed_items[].order_id
      - action_needed_items[].order_number
      - action_needed_items[].action_type
      - action_needed_items[].action_label
      - action_needed_items[].priority_level

mapping_rules:
  - widget field mapping should stay shallow and readable
  - each widget should degrade gracefully on mobile
  - action_needed_widget has higher priority than recent_orders_widget

