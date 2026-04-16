# ============================================================
# ORDER FLOW SCREEN PAYLOAD MAPPING EXECUTION
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact screen-to-API payload mapping for execution planning and proposal screens.

screen_payload_mapping:

  inventory_check_screen:
    load_endpoint:
      - get_order_detail
    load_request_fields:
      - company_id
      - order_id
    load_response_fields_used_by_ui:
      - order.order_id
      - order.order_state
      - order_lines
      - latest_execution_summary.inventory_status
    submit_endpoint:
      - record_inventory_check
    submit_request_fields:
      - company_id
      - order_id
      - inventory_check.inventory_status
      - inventory_check.freshness_type
      - inventory_check.inventory_source_type
      - inventory_check.source_system_name
      - inventory_check.source_reference_id
      - inventory_check.summary_note
    submit_response_fields_used_by_ui:
      - order_state
      - inventory_check_record

  lead_time_calculation_screen:
    load_dependencies:
      - get_order_detail result
      - latest inventory check context
    submit_endpoint:
      - calculate_lead_time
    submit_request_fields:
      - company_id
      - order_id
      - lead_time_input.lead_time_basis_type
      - lead_time_input.lead_time_note
    submit_response_fields_used_by_ui:
      - lead_time_record.order_lead_time_record_id
      - lead_time_record.lead_time_days
      - lead_time_record.lead_time_basis_type
      - lead_time_record.calculated_at

  delivery_candidate_screen:
    load_dependencies:
      - get_order_detail result
      - latest lead time context
    submit_endpoint:
      - calculate_delivery_candidates
    submit_request_fields:
      - company_id
      - order_id
      - calculation_input.requested_delivery_date_hint
      - calculation_input.internal_note
    submit_response_fields_used_by_ui:
      - order_state
      - calculation_record
      - candidates
    local_selection_fields:
      - candidates[].delivery_schedule_candidate_id
      - candidates[].candidate_label
      - candidates[].candidate_start_date
      - candidates[].candidate_end_date
      - candidates[].confidence_type
      - candidates[].rank_order

  customer_proposal_screen:
    load_dependencies:
      - get_order_detail result
      - chosen candidate from delivery_candidate_screen
    submit_endpoint:
      - create_customer_delivery_proposal
    submit_request_fields:
      - company_id
      - order_id
      - proposal.source_candidate_id
      - proposal.proposal_date_or_start
      - proposal.proposal_end_date
      - proposal.proposal_note
      - proposal.proposal_channel_type
    submit_response_fields_used_by_ui:
      - order_state
      - customer_proposal_status
      - proposal_record
    next_route_on_success:
      - proposal_history_screen
      - customer_response_record_screen

  customer_response_record_screen:
    load_dependencies:
      - latest proposal summary
    submit_endpoint:
      - record_customer_delivery_response
    submit_request_fields:
      - company_id
      - order_id
      - response.response_type
      - response.response_date
      - response.operator_note
    submit_response_fields_used_by_ui:
      - order_state
      - customer_proposal_status
      - response_record
    next_route_on_success:
      - order_detail_screen

