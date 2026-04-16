# ============================================================
# ORDER FLOW SCREEN STATE TRANSITION MATRIX BY ROLE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines major screen/state transition expectations by role.

matrix:

  sales_operator:
    typical_path:
      - create_order_from_estimate_screen
      - order_detail_screen
      - customer_proposal_screen
      - customer_response_record_screen
      - order_detail_screen
    main_states_touched:
      - draft
      - confirmed
      - customer_proposed
      - customer_confirmed

  order_coordinator:
    typical_path:
      - order_detail_screen
      - inventory_check_screen
      - lead_time_calculation_screen
      - delivery_candidate_screen
      - shipment_request_screen
      - order_detail_screen
    main_states_touched:
      - inventory_checked
      - delivery_date_calculated
      - shipment_requested

  warehouse_operator:
    typical_path:
      - shipment_status_board_screen
      - shipment_request_detail_screen
      - shipment_execution_entry_flow
    main_states_touched:
      - requested
      - accepted
      - partially_shipped
      - shipped

  delivery_confirmation_operator:
    typical_path:
      - order_detail_screen
      - delivery_confirmation_input_screen
      - partial_delivery_confirmation_screen
      - order_detail_screen
    main_states_touched:
      - partially_delivered
      - delivered

  order_manager:
    typical_path:
      - order_list_screen
      - order_detail_screen
      - order_history_screen
      - order_closure_screen
    main_states_touched:
      - any operational state
      - closed
      - canceled

rules:
  - role path is indicative, not exclusive
  - app permission and DB scope still apply
  - close and cancel remain narrower than ordinary progression

