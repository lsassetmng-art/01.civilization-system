# ============================================================
# ORDER FLOW DDL DRAFT HISTORY NOTIFICATION SYNC
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero
review_required:
- Sato

purpose:
DDL draft for history, audit-facing visibility, notifications, and sync support.

~~~sql
create table if not exists order_history_entry (
  order_history_entry_id uuid primary key,
  order_id uuid not null references order_record(order_id) on delete cascade,
  history_entry_type text not null,
  occurred_at timestamptz not null default now(),
  actor_display_name text not null,
  history_label text not null,
  history_detail_text text,
  related_record_type text,
  related_record_id uuid
);

create index if not exists idx_order_history_entry_order_occurred_at
  on order_history_entry(order_id, occurred_at desc);

create table if not exists order_audit_log (
  order_audit_log_id uuid primary key,
  order_id uuid not null references order_record(order_id) on delete cascade,
  audit_event_type text not null,
  actor_ref uuid not null,
  occurred_at timestamptz not null default now(),
  summary_text text not null,
  previous_value_summary text,
  new_value_summary text,
  related_record_type text,
  related_record_id uuid
);

create index if not exists idx_order_audit_log_order_occurred_at
  on order_audit_log(order_id, occurred_at desc);

create table if not exists notification_event_record (
  notification_event_id uuid primary key,
  company_id uuid not null,
  order_id uuid not null references order_record(order_id) on delete cascade,
  notification_event_type text not null,
  notification_level text not null,
  notification_title text not null,
  notification_message text not null,
  event_occurred_at timestamptz not null default now(),
  read_state text not null default 'unread',
  related_record_type text,
  related_record_id uuid,
  due_at timestamptz,
  actor_ref uuid,
  assigned_actor_ref uuid,
  resolved_at timestamptz,
  resolved_by uuid,
  resolution_note text,
  constraint chk_notification_event_type
    check (notification_event_type in (
      'customer_response_waiting','shipment_request_waiting',
      'shipment_request_rejected','delivery_confirmation_waiting',
      'order_overdue','proposal_overdue','shipment_overdue',
      'delivery_overdue','sync_failed','sync_pending_too_long',
      'manual_attention_required'
    )),
  constraint chk_notification_level
    check (notification_level in ('info','warning','critical')),
  constraint chk_notification_read_state
    check (read_state in ('unread','read','resolved'))
);

create index if not exists idx_notification_event_record_company_read_occurred
  on notification_event_record(company_id, read_state, event_occurred_at desc);

create index if not exists idx_notification_event_record_company_type_level
  on notification_event_record(company_id, notification_event_type, notification_level);

create table if not exists order_sync_state (
  order_sync_state_id uuid primary key,
  record_type text not null,
  record_id uuid not null,
  sync_state_type text not null,
  target_system_name text,
  recorded_at timestamptz not null default now(),
  last_attempt_at timestamptz,
  last_error_code text,
  last_error_note text,
  constraint chk_sync_state_type
    check (sync_state_type in ('local_only','pending','synced','failed','retry_required'))
);

create index if not exists idx_order_sync_state_record_type_record_id
  on order_sync_state(record_type, record_id);

create table if not exists order_pending_operation (
  order_pending_operation_id uuid primary key,
  order_id uuid not null references order_record(order_id) on delete cascade,
  operation_type text not null,
  operation_scope_type text not null,
  payload_reference text,
  retry_count integer not null default 0,
  current_pending_state text not null,
  queued_at timestamptz not null default now(),
  last_attempt_at timestamptz,
  last_error_note text,
  constraint chk_operation_type
    check (operation_type in (
      'create_order','update_order','send_shipment_request',
      'record_shipment_execution','record_delivery_confirmation','sync_to_erp'
    )),
  constraint chk_operation_scope_type
    check (operation_scope_type in (
      'order_header','order_lines','shipment_request',
      'shipment_execution','delivery_confirmation'
    ))
);

create index if not exists idx_order_pending_operation_order_queued_at
  on order_pending_operation(order_id, queued_at desc);
~~~

notes:
- related_record_type / related_record_id stays soft-linked by design
- sync visibility remains polymorphic by design
