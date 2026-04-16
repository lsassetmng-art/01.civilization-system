# ============================================================
# ORDER FLOW SCREEN PAYLOAD MAPPING ORDER ENTRY
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact screen-to-API payload mapping for order entry and order detail surfaces.

screen_payload_mapping:

  create_order_from_estimate_screen:
    load_inputs:
      - deeplink or handoff context
      - source estimate summary
      - source estimate line snapshot
      - customer snapshot seed
    submit_endpoint:
      - create_order_from_estimate
    submit_request_fields:
      - company_id
      - source_type
      - source_estimate.estimate_id
      - source_estimate.estimate_number
      - source_estimate.handoff_type
      - customer_snapshot
      - order_header
      - order_lines
      - money_summary
    submit_response_fields_used_by_ui:
      - order.order_id
      - order.order_number
      - order.order_state
      - source_estimate_link
      - sync_state
    next_route_on_success:
      - order_detail_screen

  create_standalone_order_screen:
    load_inputs:
      - empty order entry state
      - customer entry state
      - default currency selection context
    submit_endpoint:
      - create_standalone_order
    submit_request_fields:
      - company_id
      - source_type
      - customer_snapshot
      - order_header
      - order_lines
      - money_summary
    submit_response_fields_used_by_ui:
      - order.order_id
      - order.order_number
      - order.order_state
      - sync_state
    next_route_on_success:
      - order_detail_screen

  order_header_edit_screen:
    load_endpoint:
      - get_order_detail
    load_request_fields:
      - company_id
      - order_id
    load_response_fields_used_by_ui:
      - order.order_id
      - order.order_number
      - order.order_state
      - order.order_date
      - order.requested_delivery_date
      - order.currency_code
      - order.subtotal_amount
      - order.tax_amount
      - order.total_amount
      - customer_snapshot
    local_submit_mode:
      - update_order_header_exact_to_be_defined_later
    note:
      - current design fixes field mapping responsibility first

  order_line_edit_screen:
    load_endpoint:
      - get_order_detail
    load_request_fields:
      - company_id
      - order_id
    load_response_fields_used_by_ui:
      - order_lines
      - order.currency_code
      - order.order_state
    local_submit_mode:
      - update_order_lines_exact_to_be_defined_later
    note:
      - line editor depends on loaded order_detail structure

  order_detail_screen:
    load_endpoint:
      - get_order_detail
    load_request_fields:
      - company_id
      - order_id
    load_response_fields_used_by_ui:
      - order
      - customer_snapshot
      - source_estimate_link
      - order_lines
      - latest_execution_summary
    action_routes:
      - inventory_check_screen
      - lead_time_calculation_screen
      - delivery_candidate_screen
      - customer_proposal_screen
      - shipment_request_screen
      - delivery_confirmation_input_screen
      - order_history_screen
      - order_closure_screen

