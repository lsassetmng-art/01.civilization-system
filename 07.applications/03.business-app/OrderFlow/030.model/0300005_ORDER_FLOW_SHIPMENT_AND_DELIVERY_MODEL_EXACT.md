# ============================================================
# ORDER FLOW SHIPMENT AND DELIVERY MODEL EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact models for shipment request, shipment result,
shipment execution visibility, and delivery confirmation.

# ============================================================
# 1. shipment_request_record
# ============================================================

shipment_request_record:
  purpose:
    - top-level request issued to shipment-side execution
  required_fields:
    - shipment_request_record_id
    - order_id
    - shipment_request_number
    - shipment_status
    - request_scope_type
    - requested_at
    - requested_by
  optional_fields:
    - requested_ship_date
    - warehouse_or_execution_target_ref
    - shipment_instruction_note
    - rejection_reason
  rules:
    - one order may have multiple shipment requests
    - partial shipment support requires scope awareness

# ============================================================
# 2. request_scope_type
# ============================================================

request_scope_type:
  values:
    - full_order
    - partial_order
    - selected_lines

# ============================================================
# 3. shipment_request_line
# ============================================================

shipment_request_line:
  purpose:
    - line-level shipment request scope
  required_fields:
    - shipment_request_line_id
    - shipment_request_record_id
    - order_line_id
    - requested_quantity
    - unit_of_measure
  optional_fields:
    - allocation_note
    - partial_reason
  rules:
    - shipment scope must remain visible at line level

# ============================================================
# 4. shipment_request_result
# ============================================================

shipment_request_result:
  purpose:
    - downstream result of shipment request acceptance or rejection
  required_fields:
    - shipment_request_result_id
    - shipment_request_record_id
    - result_type
    - result_recorded_at
    - result_recorded_by
  optional_fields:
    - result_note
    - external_reference_id
  rules:
    - acceptance and rejection should be historically retained

# ============================================================
# 5. result_type
# ============================================================

result_type:
  values:
    - accepted
    - rejected
    - partially_accepted
    - pending_response

# ============================================================
# 6. shipment_execution_record
# ============================================================

shipment_execution_record:
  purpose:
    - actual shipment execution evidence or record inside OrderFlow scope
  required_fields:
    - shipment_execution_record_id
    - shipment_request_record_id
    - shipment_execution_date
    - shipment_execution_scope_type
    - recorded_at
    - recorded_by
  optional_fields:
    - carrier_name_snapshot
    - tracking_number_snapshot
    - shipment_note
  rules:
    - this is not a full logistics backbone replacement
    - execution visibility is enough for OrderFlow scope

# ============================================================
# 7. shipment_execution_scope_type
# ============================================================

shipment_execution_scope_type:
  values:
    - full_request
    - partial_request
    - selected_lines

# ============================================================
# 8. shipment_request_status_history
# ============================================================

shipment_request_status_history:
  purpose:
    - shipment request state movement history
  required_fields:
    - shipment_request_status_history_id
    - shipment_request_record_id
    - previous_shipment_status
    - new_shipment_status
    - changed_at
    - changed_by
  optional_fields:
    - change_note
    - related_execution_record_id

# ============================================================
# 9. delivery_confirmation_record
# ============================================================

delivery_confirmation_record:
  purpose:
    - top-level delivery confirmation input
  required_fields:
    - delivery_confirmation_record_id
    - order_id
    - delivery_status
    - confirmation_date
    - confirmed_by
    - confirmed_at
  optional_fields:
    - customer_receipt_note
    - delivery_issue_note
    - delivery_evidence_ref
  rules:
    - one order may have multiple delivery confirmation records in partial cases

# ============================================================
# 10. delivery_confirmation_line
# ============================================================

delivery_confirmation_line:
  purpose:
    - line-level delivered scope tracking
  required_fields:
    - delivery_confirmation_line_id
    - delivery_confirmation_record_id
    - order_line_id
    - confirmed_delivered_quantity
    - unit_of_measure
  optional_fields:
    - line_delivery_note
    - short_delivery_reason
  rules:
    - partial delivery must remain visible at line level

