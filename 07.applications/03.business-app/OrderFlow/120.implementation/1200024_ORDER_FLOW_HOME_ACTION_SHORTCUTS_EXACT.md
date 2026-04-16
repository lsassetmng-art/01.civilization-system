# ============================================================
# ORDER FLOW HOME ACTION SHORTCUTS EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact home shortcut actions and their navigation targets.

home_action_shortcuts:

  create_standalone_order:
    label:
      - Create Order
    target_route:
      - create_standalone_order_screen
    permission_expectation:
      - create_standalone_order permission required

  create_from_estimate:
    label:
      - Create from Estimate
    target_route:
      - create_order_from_estimate_screen
    visibility_rule:
      - visible when estimate-origin entry context or authorized estimate selection exists

  open_order_list:
    label:
      - Open Orders
    target_route:
      - order_list_screen

  open_notifications:
    label:
      - Notifications
    target_route:
      - notification_list_surface_exact_to_be_added_later

  open_shipment_board:
    label:
      - Shipment Board
    target_route:
      - shipment_status_board_screen

  open_overdue_items:
    label:
      - Overdue Items
    target_route:
      - filtered_order_list_or_notification_list

shortcut_design_rules:
  - shortcuts should point to high-frequency operational actions
  - shortcuts should not replace state-aware action guidance
  - home should stay useful even without estimate-origin context

