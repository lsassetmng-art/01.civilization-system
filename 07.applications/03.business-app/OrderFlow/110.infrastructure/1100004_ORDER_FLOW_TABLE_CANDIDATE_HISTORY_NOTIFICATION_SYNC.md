# ============================================================
# ORDER FLOW TABLE CANDIDATE HISTORY NOTIFICATION SYNC
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact candidate tables for history, audit-facing visibility,
notifications, and sync/pending-operation support.

table_candidates:

  order_history_entry:
    role:
      - timeline-friendly business history
    key_columns:
      - order_history_entry_id
      - order_id
      - history_entry_type
      - occurred_at
      - actor_display_name
      - history_label
      - history_detail_text
      - related_record_type
      - related_record_id

  order_audit_log:
    role:
      - audit-facing readable event log
    key_columns:
      - order_audit_log_id
      - order_id
      - audit_event_type
      - actor_ref
      - occurred_at
      - summary_text
      - previous_value_summary
      - new_value_summary
      - related_record_type
      - related_record_id

  notification_event_record:
    role:
      - operator-facing reminders and alerts
    key_columns:
      - notification_event_id
      - company_id
      - order_id
      - notification_event_type
      - notification_level
      - notification_title
      - notification_message
      - event_occurred_at
      - read_state
      - related_record_type
      - related_record_id
      - due_at
      - actor_ref
      - assigned_actor_ref
      - resolved_at
      - resolved_by
      - resolution_note

  order_sync_state:
    role:
      - sync visibility per local record
    key_columns:
      - order_sync_state_id
      - record_type
      - record_id
      - sync_state_type
      - target_system_name
      - recorded_at
      - last_attempt_at
      - last_error_code
      - last_error_note

  order_pending_operation:
    role:
      - locally queued operation visibility
    key_columns:
      - order_pending_operation_id
      - order_id
      - operation_type
      - operation_scope_type
      - payload_reference
      - retry_count
      - current_pending_state
      - queued_at
      - last_attempt_at
      - last_error_note

candidate_index_notes:
  recommended_index_targets:
    - order_record(company_id, order_state, updated_at)
    - order_record(company_id, order_date)
    - order_record(company_id, requested_delivery_date)
    - order_line_item(order_id, line_no)
    - shipment_request_record(order_id, shipment_status, requested_at)
    - delivery_confirmation_record(order_id, confirmation_date)
    - order_history_entry(order_id, occurred_at)
    - notification_event_record(company_id, read_state, event_occurred_at)
    - notification_event_record(company_id, notification_event_type, notification_level)
    - order_sync_state(record_type, record_id)

design_rules:
  - history, audit, notification, and sync are intentionally separated
  - notification_event_record is action visibility, not audit replacement
  - sync visibility must remain queryable without reading full history

