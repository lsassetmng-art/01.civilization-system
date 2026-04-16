# ============================================================
# ORDER FLOW TABLE CANDIDATE SHIPMENT DELIVERY
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact candidate tables for proposal, shipment,
delivery confirmation, and closure-facing fulfillment tracking.

table_candidates:

  customer_delivery_proposal_record:
    role:
      - formal proposal history toward customer
    key_columns:
      - customer_delivery_proposal_record_id
      - order_id
      - source_candidate_id
      - proposal_date_or_start
      - proposal_end_date
      - proposal_note
      - proposal_channel_type
      - proposal_status
      - recorded_at
      - recorded_by

  customer_delivery_response_record:
    role:
      - customer answer history
    key_columns:
      - customer_delivery_response_record_id
      - order_id
      - customer_delivery_proposal_record_id
      - response_type
      - response_date
      - operator_note
      - recorded_at
      - recorded_by

  shipment_request_record:
    role:
      - top-level shipment request
    key_columns:
      - shipment_request_record_id
      - order_id
      - shipment_request_number
      - shipment_status
      - request_scope_type
      - requested_ship_date
      - warehouse_or_execution_target_ref
      - shipment_instruction_note
      - rejection_reason
      - requested_at
      - requested_by

  shipment_request_line:
    role:
      - requested shipment scope per order line
    key_columns:
      - shipment_request_line_id
      - shipment_request_record_id
      - order_line_id
      - requested_quantity
      - unit_of_measure
      - allocation_note
      - partial_reason

  shipment_request_result:
    role:
      - downstream request answer history
    key_columns:
      - shipment_request_result_id
      - shipment_request_record_id
      - result_type
      - result_note
      - external_reference_id
      - result_recorded_at
      - result_recorded_by

  shipment_execution_record:
    role:
      - actual shipment execution visibility
    key_columns:
      - shipment_execution_record_id
      - shipment_request_record_id
      - shipment_execution_date
      - shipment_execution_scope_type
      - carrier_name_snapshot
      - tracking_number_snapshot
      - shipment_note
      - recorded_at
      - recorded_by

  shipment_request_status_history:
    role:
      - shipment request status transition history
    key_columns:
      - shipment_request_status_history_id
      - shipment_request_record_id
      - previous_shipment_status
      - new_shipment_status
      - changed_at
      - changed_by
      - change_note
      - related_execution_record_id

  delivery_confirmation_record:
    role:
      - top-level delivery confirmation record
    key_columns:
      - delivery_confirmation_record_id
      - order_id
      - delivery_status
      - confirmation_date
      - customer_receipt_note
      - delivery_issue_note
      - delivery_evidence_ref
      - confirmed_by
      - confirmed_at

  delivery_confirmation_line:
    role:
      - delivered scope by order line
    key_columns:
      - delivery_confirmation_line_id
      - delivery_confirmation_record_id
      - order_line_id
      - confirmed_delivered_quantity
      - unit_of_measure
      - line_delivery_note
      - short_delivery_reason

design_rules:
  - proposal and response are separate
  - request, request result, and execution are separate
  - delivery confirmation top-level and line-level are separate
  - partial fulfillment must remain reconstructable from stored rows

