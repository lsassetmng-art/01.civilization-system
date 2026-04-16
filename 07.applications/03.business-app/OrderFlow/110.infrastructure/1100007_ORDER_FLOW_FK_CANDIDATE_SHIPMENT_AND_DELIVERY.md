# ============================================================
# ORDER FLOW FK CANDIDATE SHIPMENT AND DELIVERY
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines foreign key candidates for proposal, shipment, and delivery tables.

fk_candidates:

  customer_delivery_proposal_record:
    candidate_foreign_keys:
      - order_id -> order_record.order_id
      - source_candidate_id -> delivery_schedule_candidate.delivery_schedule_candidate_id

  customer_delivery_response_record:
    candidate_foreign_keys:
      - order_id -> order_record.order_id
      - customer_delivery_proposal_record_id -> customer_delivery_proposal_record.customer_delivery_proposal_record_id

  shipment_request_record:
    candidate_foreign_keys:
      - order_id -> order_record.order_id

  shipment_request_line:
    candidate_foreign_keys:
      - shipment_request_record_id -> shipment_request_record.shipment_request_record_id
      - order_line_id -> order_line_item.order_line_id

  shipment_request_result:
    candidate_foreign_keys:
      - shipment_request_record_id -> shipment_request_record.shipment_request_record_id

  shipment_execution_record:
    candidate_foreign_keys:
      - shipment_request_record_id -> shipment_request_record.shipment_request_record_id

  shipment_request_status_history:
    candidate_foreign_keys:
      - shipment_request_record_id -> shipment_request_record.shipment_request_record_id
      - related_execution_record_id -> shipment_execution_record.shipment_execution_record_id

  delivery_confirmation_record:
    candidate_foreign_keys:
      - order_id -> order_record.order_id

  delivery_confirmation_line:
    candidate_foreign_keys:
      - delivery_confirmation_record_id -> delivery_confirmation_record.delivery_confirmation_record_id
      - order_line_id -> order_line_item.order_line_id

fk_design_notes:
  - proposal response binds to both order and proposal for safe traceability
  - shipment_request_line is the key bridge from request to ordered scope
  - delivery_confirmation_line binds delivered scope back to original line item

