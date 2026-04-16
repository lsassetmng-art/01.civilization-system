# ============================================================
# ORDER FLOW SCREEN PAYLOAD MAPPING SHIPMENT DELIVERY
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact screen-to-API payload mapping for shipment and delivery surfaces.

screen_payload_mapping:

  shipment_request_screen:
    load_endpoint:
      - get_order_detail
    load_request_fields:
      - company_id
      - order_id
    load_response_fields_used_by_ui:
      - order
      - order_lines
      - latest_execution_summary
    submit_endpoint:
      - create_shipment_request
    submit_request_fields:
      - company_id
      - order_id
      - shipment_request.request_scope_type
      - shipment_request.requested_ship_date
      - shipment_request.warehouse_or_execution_target_ref
      - shipment_request.shipment_instruction_note
      - request_lines
    submit_response_fields_used_by_ui:
      - order_state
      - shipment_request_record
      - remaining_scope_summary
    next_route_on_success:
      - shipment_request_detail_screen
      - shipment_status_board_screen

  shipment_request_detail_screen:
    load_dependencies:
      - shipment request summary
      - related order summary
    submit_endpoint:
      - record_shipment_request_result
    submit_request_fields:
      - company_id
      - shipment_request_record_id
      - result.result_type
      - result.result_note
    submit_response_fields_used_by_ui:
      - shipment_request_result
      - shipment_status

  shipment_status_board_screen:
    load_dependencies:
      - request list query exact to be defined later
    read_fields_expected:
      - shipment_request_record.shipment_request_record_id
      - shipment_request_record.shipment_request_number
      - shipment_request_record.shipment_status
      - remaining_scope_summary
    action_routes:
      - shipment_request_detail_screen
      - shipment_execution_entry_flow

  shipment_execution_entry_flow:
    submit_endpoint:
      - record_shipment_execution
    submit_request_fields:
      - company_id
      - shipment_request_record_id
      - shipment_execution.shipment_execution_date
      - shipment_execution.shipment_execution_scope_type
      - shipment_execution.carrier_name_snapshot
      - shipment_execution.tracking_number_snapshot
      - shipment_execution.shipment_note
    submit_response_fields_used_by_ui:
      - order_state
      - shipment_execution_record
      - shipment_status

  delivery_confirmation_input_screen:
    load_endpoint:
      - get_order_detail
    load_request_fields:
      - company_id
      - order_id
    load_response_fields_used_by_ui:
      - order
      - order_lines
      - latest_execution_summary
    submit_endpoint:
      - record_delivery_confirmation
    submit_request_fields:
      - company_id
      - order_id
      - delivery_confirmation.delivery_status
      - delivery_confirmation.confirmation_date
      - delivery_confirmation.customer_receipt_note
      - delivery_confirmation.delivery_issue_note
      - delivery_lines
    submit_response_fields_used_by_ui:
      - order_state
      - delivery_confirmation_record
      - remaining_scope_summary
    next_route_on_success:
      - order_detail_screen
      - partial_delivery_confirmation_screen

  partial_delivery_confirmation_screen:
    load_dependencies:
      - get_order_detail result
      - current remaining quantity view
    submit_endpoint:
      - record_delivery_confirmation
    submit_request_fields:
      - company_id
      - order_id
      - delivery_confirmation.delivery_status
      - delivery_confirmation.confirmation_date
      - delivery_lines[].order_line_id
      - delivery_lines[].confirmed_delivered_quantity
      - delivery_lines[].unit_of_measure
      - delivery_lines[].line_delivery_note
    submit_response_fields_used_by_ui:
      - delivery_confirmation_record
      - remaining_scope_summary

