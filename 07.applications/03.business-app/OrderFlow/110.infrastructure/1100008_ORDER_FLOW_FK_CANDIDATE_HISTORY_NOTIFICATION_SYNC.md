# ============================================================
# ORDER FLOW FK CANDIDATE HISTORY NOTIFICATION SYNC
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines foreign key candidates for history, audit, notification,
and sync/pending-operation tables.

fk_candidates:

  order_history_entry:
    candidate_foreign_keys:
      - order_id -> order_record.order_id

  order_audit_log:
    candidate_foreign_keys:
      - order_id -> order_record.order_id

  notification_event_record:
    candidate_foreign_keys:
      - order_id -> order_record.order_id

  order_pending_operation:
    candidate_foreign_keys:
      - order_id -> order_record.order_id

  order_sync_state:
    candidate_foreign_keys:
      - no_strict_single_fk
    note:
      - record_type + record_id is a polymorphic local reference pattern

polymorphic_reference_notes:
  related_record_type_and_id_pairs_may_point_to:
    - order_status_record
    - order_inventory_check_record
    - order_lead_time_record
    - delivery_schedule_candidate
    - customer_delivery_proposal_record
    - customer_delivery_response_record
    - shipment_request_record
    - shipment_request_result
    - shipment_execution_record
    - delivery_confirmation_record

design_rules:
  - timeline and audit tables keep order_id as main anchor
  - related_record_type / related_record_id is intentionally soft-linked
  - order_sync_state remains polymorphic by design for cross-record sync visibility
  - notification_event_record should stay simple enough for fast querying

