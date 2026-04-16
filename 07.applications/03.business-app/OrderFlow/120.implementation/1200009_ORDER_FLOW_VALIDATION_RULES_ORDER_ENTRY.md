# ============================================================
# ORDER FLOW VALIDATION RULES ORDER ENTRY
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact validation rules for order creation and order editing.

validation_rules:

  create_order_from_estimate:
    required:
      - company_id
      - source_type
      - source_estimate.estimate_id
      - source_estimate.estimate_number
      - source_estimate.handoff_type
      - customer_snapshot.customer_name_snapshot
      - order_header.order_date
      - order_header.currency_code
      - at_least_one_order_line
      - money_summary.total_amount
    constraints:
      source_type:
        allowed_values:
          - from_estimate
      source_estimate.handoff_type:
        allowed_values:
          - copy
          - deeplink_copy
          - internal_create_from_estimate
      order_header.currency_code:
        must_be:
          - non_empty_string
          - iso_currency_style_code
      order_lines:
        min_count: 1
      order_lines[].ordered_quantity:
        must_be:
          - numeric
          - greater_than_zero
      order_lines[].unit_price_amount:
        must_be:
          - decimal_string
          - zero_or_greater
      order_lines[].line_subtotal_amount:
        must_be:
          - decimal_string
          - zero_or_greater
    forbidden:
      - estimate_id reused as order_id
      - empty currency_code
      - negative quantity
      - missing customer snapshot
    failure_examples:
      - no order lines
      - invalid currency code
      - source estimate context missing

  create_standalone_order:
    required:
      - company_id
      - source_type
      - customer_snapshot.customer_name_snapshot
      - order_header.order_date
      - order_header.currency_code
      - at_least_one_order_line
      - money_summary.total_amount
    constraints:
      source_type:
        allowed_values:
          - standalone
      order_lines[].item_name_snapshot:
        must_be:
          - non_empty_string
      order_lines[].ordered_quantity:
        must_be:
          - numeric
          - greater_than_zero
      money_summary.subtotal_amount:
        must_be:
          - decimal_string
      money_summary.tax_amount:
        must_be:
          - decimal_string
      money_summary.total_amount:
        must_be:
          - decimal_string
    forbidden:
      - source_estimate payload required for standalone
      - negative money values unless future credit policy exists
    failure_examples:
      - customer snapshot absent
      - invalid line quantity
      - total amount missing

  order_header_edit:
    required:
      - company_id
      - order_id
    constraints:
      editable_fields_must_follow_current_state_policy:
        - true
      requested_delivery_date:
        must_be:
          - valid_date_or_null
      currency_code:
        must_be:
          - immutable_after_creation_by_default
    forbidden:
      - editing closed order in normal mode
      - silently switching order source type

  order_line_edit:
    required:
      - company_id
      - order_id
      - valid_line_payload
    constraints:
      line_no:
        must_be:
          - positive_integer
      ordered_quantity:
        must_be:
          - greater_than_zero
      unit_of_measure:
        must_be:
          - non_empty_string
      line_state:
        allowed_values:
          - open
          - partially_allocated
          - ready_for_shipment
          - partially_shipped
          - shipped
          - partially_delivered
          - delivered
          - closed
          - canceled
    forbidden:
      - deleting shipped line without explicit administrative rule
      - reducing quantity below already shipped or delivered scope

