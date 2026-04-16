# ============================================================
# ORDER FLOW VALIDATION RULES SHIPMENT DELIVERY
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines validation rules for shipment request,
shipment execution, and delivery confirmation.

validation_rules:

  create_shipment_request:
    required:
      - company_id
      - order_id
      - shipment_request.request_scope_type
      - at_least_one_request_line
    constraints:
      request_scope_type:
        allowed_values:
          - full_order
          - partial_order
          - selected_lines
      request_lines[].requested_quantity:
        must_be:
          - numeric
          - greater_than_zero
      request_lines[].requested_quantity_must_not_exceed_remaining_scope:
        - true
    forbidden:
      - shipment request on closed order
      - shipment request with zero lines
      - shipment request exceeding remaining open quantity
    normal_path_requirement:
      - customer_confirmed expected before shipment request unless explicit override policy exists

  record_shipment_request_result:
    required:
      - company_id
      - shipment_request_record_id
      - result.result_type
    constraints:
      result_type:
        allowed_values:
          - accepted
          - rejected
          - partially_accepted
          - pending_response
    forbidden:
      - result recorded for nonexistent request
      - invalid result transition from terminal shipment handling state

  record_shipment_execution:
    required:
      - company_id
      - shipment_request_record_id
      - shipment_execution.shipment_execution_date
      - shipment_execution.shipment_execution_scope_type
    constraints:
      shipment_execution_scope_type:
        allowed_values:
          - full_request
          - partial_request
          - selected_lines
      shipment_execution_date:
        must_be:
          - valid_date
    forbidden:
      - execution on rejected request unless reopened by explicit policy
      - execution quantity exceeding accepted/requested scope

  record_delivery_confirmation:
    required:
      - company_id
      - order_id
      - delivery_confirmation.delivery_status
      - delivery_confirmation.confirmation_date
    constraints:
      delivery_status:
        allowed_values:
          - not_confirmed
          - partially_delivered
          - delivered
          - delivery_confirmed
      delivery_lines[].confirmed_delivered_quantity:
        must_be:
          - numeric
          - greater_than_zero
      delivery_lines[].confirmed_delivered_quantity_must_not_exceed_remaining_scope:
        - true
    forbidden:
      - delivery confirmation on closed order
      - partial delivery line exceeding remaining line quantity
      - delivery confirmation without selected scope where line detail is required

