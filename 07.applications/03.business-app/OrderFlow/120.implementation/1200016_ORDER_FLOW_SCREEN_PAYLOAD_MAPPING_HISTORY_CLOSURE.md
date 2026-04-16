# ============================================================
# ORDER FLOW SCREEN PAYLOAD MAPPING HISTORY CLOSURE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact screen-to-API payload mapping for history, closure, and error interpretation.

screen_payload_mapping:

  order_history_screen:
    load_dependencies:
      - order history query exact to be defined later
    read_fields_expected:
      - order_history_entry.order_history_entry_id
      - order_history_entry.history_entry_type
      - order_history_entry.occurred_at
      - order_history_entry.actor_display_name
      - order_history_entry.history_label
      - order_history_entry.history_detail_text
    action_routes:
      - related detail surfaces

  order_closure_screen:
    load_endpoint:
      - get_order_detail
    load_request_fields:
      - company_id
      - order_id
    load_response_fields_used_by_ui:
      - order
      - order_lines
      - latest_execution_summary
      - remaining_scope_summary_if_available
    submit_endpoint:
      - close_order
    submit_request_fields:
      - company_id
      - order_id
      - closure.closure_reason_type
      - closure.closure_note
    submit_response_fields_used_by_ui:
      - order.order_id
      - order.order_state
      - order.closed_at
      - order.closed_by
    next_route_on_success:
      - order_detail_screen
      - order_list_screen

  validation_error_surface_mapping:
    source_envelope:
      - validation_error_envelope
    ui_bindings:
      - field_errors[].field_name -> target form field
      - field_errors[].reason -> inline error message
      - message -> screen-level error banner

  sync_error_surface_mapping:
    source_envelope:
      - sync_partial_success_envelope
      - sync_failed_envelope
    ui_bindings:
      - sync_state.sync_state_type -> sync badge
      - sync_state.target_system_name -> sync target label
      - sync_state.last_error_code -> retry/error detail area
    notes:
      - local save success must remain visible even when external sync fails

