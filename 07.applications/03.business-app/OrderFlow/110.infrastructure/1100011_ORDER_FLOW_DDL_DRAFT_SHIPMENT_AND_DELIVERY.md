# ============================================================
# ORDER FLOW DDL DRAFT SHIPMENT AND DELIVERY
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero
review_required:
- Sato

purpose:
DDL draft for proposal, shipment, and delivery tables.

~~~sql
create table if not exists customer_delivery_proposal_record (
  customer_delivery_proposal_record_id uuid primary key,
  order_id uuid not null references order_record(order_id) on delete cascade,
  source_candidate_id uuid references delivery_schedule_candidate(delivery_schedule_candidate_id),
  proposal_date_or_start date not null,
  proposal_end_date date not null,
  proposal_note text,
  proposal_channel_type text not null,
  proposal_status text not null,
  recorded_at timestamptz not null default now(),
  recorded_by uuid not null,
  constraint chk_proposal_date_range
    check (proposal_end_date >= proposal_date_or_start),
  constraint chk_proposal_channel_type
    check (proposal_channel_type in (
      'manual_internal_record','phone_record','email_record','in_person_record'
    )),
  constraint chk_proposal_status
    check (proposal_status in (
      'not_proposed','proposed','revision_requested','accepted','rejected'
    ))
);

create index if not exists idx_customer_delivery_proposal_record_order_recorded_at
  on customer_delivery_proposal_record(order_id, recorded_at desc);

create table if not exists customer_delivery_response_record (
  customer_delivery_response_record_id uuid primary key,
  order_id uuid not null references order_record(order_id) on delete cascade,
  customer_delivery_proposal_record_id uuid not null references customer_delivery_proposal_record(customer_delivery_proposal_record_id) on delete cascade,
  response_type text not null,
  response_date date not null,
  operator_note text,
  recorded_at timestamptz not null default now(),
  recorded_by uuid not null,
  constraint chk_response_type
    check (response_type in ('accepted','rejected','revision_requested'))
);

create index if not exists idx_customer_delivery_response_record_order_recorded_at
  on customer_delivery_response_record(order_id, recorded_at desc);

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
~~~

notes:
- partial handling is reconstructed through request_line and confirmation_line rows
