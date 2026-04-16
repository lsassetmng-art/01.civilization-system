# ============================================================
# ORDER FLOW HISTORY AND SYNC MODEL EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines OrderFlow-local history, audit-facing entries,
and sync/pending-operation support models without entering common-component design.

# ============================================================
# 1. order_sync_state
# ============================================================

order_sync_state:
  purpose:
    - local expression of sync visibility for order-related records
  required_fields:
    - order_sync_state_id
    - record_type
    - record_id
    - sync_state_type
    - recorded_at
  optional_fields:
    - last_attempt_at
    - last_error_code
    - last_error_note
    - target_system_name
  rules:
    - this model expresses OrderFlow usage need only
    - commonization is handled elsewhere if needed

# ============================================================
# 2. sync_state_type
# ============================================================

sync_state_type:
  values:
    - local_only
    - pending
    - synced
    - failed
    - retry_required

# ============================================================
# 3. order_pending_operation
# ============================================================

order_pending_operation:
  purpose:
    - local pending business operation visibility
  required_fields:
    - order_pending_operation_id
    - order_id
    - operation_type
    - operation_scope_type
    - queued_at
    - current_pending_state
  optional_fields:
    - payload_reference
    - retry_count
    - last_attempt_at
    - last_error_note
  rules:
    - pending operation is business-visible holding state
    - exact common-component design is intentionally out of scope here

# ============================================================
# 4. operation_type
# ============================================================

operation_type:
  values:
    - create_order
    - update_order
    - send_shipment_request
    - record_shipment_execution
    - record_delivery_confirmation
    - sync_to_erp

# ============================================================
# 5. operation_scope_type
# ============================================================

operation_scope_type:
  values:
    - order_header
    - order_lines
    - shipment_request
    - shipment_execution
    - delivery_confirmation

# ============================================================
# 6. order_audit_log
# ============================================================

order_audit_log:
  purpose:
    - app-local audit-facing event log for business review
  required_fields:
    - order_audit_log_id
    - order_id
    - audit_event_type
    - actor_ref
    - occurred_at
    - summary_text
  optional_fields:
    - previous_value_summary
    - new_value_summary
    - related_record_type
    - related_record_id
  rules:
    - audit log remains readable to operators
    - detailed security canonical design belongs elsewhere

# ============================================================
# 7. order_history_entry
# ============================================================

order_history_entry:
  purpose:
    - timeline-friendly visible business history
  required_fields:
    - order_history_entry_id
    - order_id
    - history_entry_type
    - occurred_at
    - actor_display_name
    - history_label
  optional_fields:
    - history_detail_text
    - related_record_type
    - related_record_id
  rules:
    - this model is optimized for timeline display rather than strict audit semantics

# ============================================================
# 8. history_entry_type
# ============================================================

history_entry_type:
  values:
    - order_created
    - order_confirmed
    - inventory_checked
    - lead_time_calculated
    - delivery_candidate_generated
    - customer_proposed
    - customer_response_recorded
    - shipment_requested
    - shipment_result_recorded
    - shipment_executed
    - delivery_confirmed
    - order_closed
    - order_canceled

