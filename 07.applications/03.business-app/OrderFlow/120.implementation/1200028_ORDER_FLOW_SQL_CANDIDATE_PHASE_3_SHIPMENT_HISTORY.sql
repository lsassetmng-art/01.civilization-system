-- ============================================================
-- ORDER FLOW SQL CANDIDATE PHASE 3 SHIPMENT HISTORY
-- ============================================================
-- status: draft
-- system: order-flow
-- owner: Boss
-- prepared_by: Zero
-- review_required: Sato

create table if not exists shipment_request_record (
  shipment_request_record_id uuid primary key,
  order_id uuid not null references order_record(order_id) on delete cascade,
  shipment_request_number text not null,
  shipment_status text not null,
  request_scope_type text not null,
  requested_ship_date date,
  warehouse_or_execution_target_ref text,
  shipment_instruction_note text,
  rejection_reason text,
  requested_at timestamptz not null default now(),
  requested_by uuid not null,
  constraint chk_shipment_status
    check (shipment_status in (
      'not_requested','requested','accepted','rejected',
      'partially_shipped','shipped'
    )),
  constraint chk_request_scope_type
    check (request_scope_type in ('full_order','partial_order','selected_lines'))
);

create unique index if not exists idx_shipment_request_record_number
  on shipment_request_record(shipment_request_number);

create index if not exists idx_shipment_request_record_order_requested_at
  on shipment_request_record(order_id, requested_at desc);

create table if not exists shipment_request_line (
  shipment_request_line_id uuid primary key,
  shipment_request_record_id uuid not null references shipment_request_record(shipment_request_record_id) on delete cascade,
  order_line_id uuid not null references order_line_item(order_line_id),
  requested_quantity numeric(18,4) not null,
  unit_of_measure text not null,
  allocation_note text,
  partial_reason text,
  constraint chk_requested_quantity
    check (requested_quantity > 0)
);

create index if not exists idx_shipment_request_line_request_id
  on shipment_request_line(shipment_request_record_id);

create table if not exists shipment_request_result (
  shipment_request_result_id uuid primary key,
  shipment_request_record_id uuid not null references shipment_request_record(shipment_request_record_id) on delete cascade,
  result_type text not null,
  result_note text,
  external_reference_id text,
  result_recorded_at timestamptz not null default now(),
  result_recorded_by uuid not null,
  constraint chk_result_type
    check (result_type in ('accepted','rejected','partially_accepted','pending_response'))
);

create index if not exists idx_shipment_request_result_request_recorded_at
  on shipment_request_result(shipment_request_record_id, result_recorded_at desc);

create table if not exists shipment_execution_record (
  shipment_execution_record_id uuid primary key,
  shipment_request_record_id uuid not null references shipment_request_record(shipment_request_record_id) on delete cascade,
  shipment_execution_date date not null,
  shipment_execution_scope_type text not null,
  carrier_name_snapshot text,
  tracking_number_snapshot text,
  shipment_note text,
  recorded_at timestamptz not null default now(),
  recorded_by uuid not null,
  constraint chk_shipment_execution_scope_type
    check (shipment_execution_scope_type in ('full_request','partial_request','selected_lines'))
);

create index if not exists idx_shipment_execution_record_request_execution_date
  on shipment_execution_record(shipment_request_record_id, shipment_execution_date desc);

create table if not exists shipment_request_status_history (
  shipment_request_status_history_id uuid primary key,
  shipment_request_record_id uuid not null references shipment_request_record(shipment_request_record_id) on delete cascade,
  previous_shipment_status text,
  new_shipment_status text not null,
  changed_at timestamptz not null default now(),
  changed_by uuid not null,
  change_note text,
  related_execution_record_id uuid references shipment_execution_record(shipment_execution_record_id)
);

create index if not exists idx_shipment_request_status_history_request_changed_at
  on shipment_request_status_history(shipment_request_record_id, changed_at desc);

create table if not exists delivery_confirmation_record (
  delivery_confirmation_record_id uuid primary key,
  order_id uuid not null references order_record(order_id) on delete cascade,
  delivery_status text not null,
  confirmation_date date not null,
  customer_receipt_note text,
  delivery_issue_note text,
  delivery_evidence_ref text,
  confirmed_by uuid not null,
  confirmed_at timestamptz not null default now(),
  constraint chk_delivery_status
    check (delivery_status in (
      'not_confirmed','partially_delivered','delivered','delivery_confirmed'
    ))
);

create index if not exists idx_delivery_confirmation_record_order_confirmation_date
  on delivery_confirmation_record(order_id, confirmation_date desc);

create table if not exists delivery_confirmation_line (
  delivery_confirmation_line_id uuid primary key,
  delivery_confirmation_record_id uuid not null references delivery_confirmation_record(delivery_confirmation_record_id) on delete cascade,
  order_line_id uuid not null references order_line_item(order_line_id),
  confirmed_delivered_quantity numeric(18,4) not null,
  unit_of_measure text not null,
  line_delivery_note text,
  short_delivery_reason text,
  constraint chk_confirmed_delivered_quantity
    check (confirmed_delivered_quantity > 0)
);

create index if not exists idx_delivery_confirmation_line_confirmation_id
  on delivery_confirmation_line(delivery_confirmation_record_id);

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
