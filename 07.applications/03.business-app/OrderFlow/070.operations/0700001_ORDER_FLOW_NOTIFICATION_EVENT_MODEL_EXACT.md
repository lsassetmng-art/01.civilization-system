# ============================================================
# ORDER FLOW NOTIFICATION EVENT MODEL EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines notification event types and the operator-visible event model
for reminders, action-needed alerts, and overdue visibility.

notification_event_model:

  notification_event_record:
    purpose:
      - stores operator-visible notification events inside OrderFlow scope
    required_fields:
      - notification_event_id
      - company_id
      - order_id
      - notification_event_type
      - notification_level
      - notification_title
      - notification_message
      - event_occurred_at
      - read_state
    optional_fields:
      - related_record_type
      - related_record_id
      - due_at
      - actor_ref
      - assigned_actor_ref
      - resolved_at
      - resolved_by
      - resolution_note
    rules:
      - notification event is visibility-focused
      - notification event is not a replacement for audit log
      - one order may have multiple active notifications

  notification_event_type:
    values:
      - customer_response_waiting
      - shipment_request_waiting
      - shipment_request_rejected
      - delivery_confirmation_waiting
      - order_overdue
      - proposal_overdue
      - shipment_overdue
      - delivery_overdue
      - sync_failed
      - sync_pending_too_long
      - manual_attention_required

  notification_level:
    values:
      - info
      - warning
      - critical

  read_state:
    values:
      - unread
      - read
      - resolved

notification_design_rules:
  - read and resolved are distinct
  - critical events should remain visible until resolved
  - sync-visible notifications must not be confused with business-completion notifications

