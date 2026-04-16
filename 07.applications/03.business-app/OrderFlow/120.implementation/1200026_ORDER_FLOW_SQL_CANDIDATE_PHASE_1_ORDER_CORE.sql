-- ============================================================
-- ORDER FLOW SQL CANDIDATE PHASE 1 ORDER CORE
-- ============================================================
-- status: draft
-- system: order-flow
-- owner: Boss
-- prepared_by: Zero
-- review_required: Sato

create table if not exists order_record (
  order_id uuid primary key,
  company_id uuid not null,
  order_number text not null,
  order_source_type text not null,
  order_state text not null,
  customer_id_or_local_ref text,
  order_date date not null,
  requested_delivery_date date,
  internally_promised_date date,
  customer_confirmed_date date,
  currency_code text not null,
  subtotal_amount numeric(18,2) not null default 0,
  tax_amount numeric(18,2) not null default 0,
  total_amount numeric(18,2) not null default 0,
  source_estimate_exists boolean not null default false,
  cancel_reason text,
  closed_at timestamptz,
  closed_by uuid,
  created_by uuid not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint chk_order_source_type
    check (order_source_type in ('from_estimate','standalone')),
  constraint chk_order_state
    check (order_state in (
      'draft','confirmed','inventory_checked','delivery_date_calculated',
      'customer_proposed','customer_confirmed','shipment_requested',
      'shipped','delivered','closed','canceled'
    )),
  constraint chk_order_currency_code
    check (char_length(currency_code) between 3 and 10)
);

create unique index if not exists idx_order_record_company_order_number
  on order_record(company_id, order_number);

create index if not exists idx_order_record_company_state_updated
  on order_record(company_id, order_state, updated_at desc);

create index if not exists idx_order_record_company_order_date
  on order_record(company_id, order_date desc);

create index if not exists idx_order_record_company_requested_delivery_date
  on order_record(company_id, requested_delivery_date);

create table if not exists order_line_item (
  order_line_id uuid primary key,
  order_id uuid not null references order_record(order_id) on delete cascade,
  line_no integer not null,
  item_ref_or_local_code text,
  item_name_snapshot text not null,
  ordered_quantity numeric(18,4) not null,
  unit_of_measure text not null,
  unit_price_amount numeric(18,2) not null default 0,
  currency_code text not null,
  line_subtotal_amount numeric(18,2) not null default 0,
  line_state text not null,
  requested_ship_scope_note text,
  customer_line_note text,
  internal_line_note text,
  source_estimate_line_id uuid,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint chk_order_line_quantity
    check (ordered_quantity > 0),
  constraint chk_order_line_state
    check (line_state in (
      'open','partially_allocated','ready_for_shipment','partially_shipped',
      'shipped','partially_delivered','delivered','closed','canceled'
    )),
  constraint chk_order_line_currency_code
    check (char_length(currency_code) between 3 and 10)
);

create unique index if not exists idx_order_line_item_order_line_no
  on order_line_item(order_id, line_no);

create index if not exists idx_order_line_item_order_id
  on order_line_item(order_id);

create table if not exists order_customer_snapshot (
  order_customer_snapshot_id uuid primary key,
  order_id uuid not null unique references order_record(order_id) on delete cascade,
  customer_name_snapshot text not null,
  customer_display_name_snapshot text,
  billing_name_snapshot text,
  shipping_name_snapshot text,
  contact_person_snapshot text,
  contact_email_snapshot text,
  contact_phone_snapshot text,
  billing_address_snapshot text,
  shipping_address_snapshot text,
  department_snapshot text,
  destination_note_snapshot text,
  locale_snapshot text,
  customer_code_snapshot text,
  snapshot_taken_at timestamptz not null default now()
);

create index if not exists idx_order_customer_snapshot_order_id
  on order_customer_snapshot(order_id);

create table if not exists order_source_estimate_link (
  order_source_estimate_link_id uuid primary key,
  order_id uuid not null unique references order_record(order_id) on delete cascade,
  source_estimate_id uuid not null,
  source_estimate_number_snapshot text not null,
  source_estimate_version text,
  source_estimate_title_snapshot text,
  handoff_type text not null,
  handoff_note text,
  snapshot_taken_at timestamptz not null default now(),
  linked_by uuid not null,
  constraint chk_handoff_type
    check (handoff_type in ('copy','deeplink_copy','internal_create_from_estimate'))
);

create index if not exists idx_order_source_estimate_link_source_estimate_id
  on order_source_estimate_link(source_estimate_id);

create table if not exists order_status_record (
  order_status_record_id uuid primary key,
  order_id uuid not null references order_record(order_id) on delete cascade,
  previous_order_state text,
  new_order_state text not null,
  changed_by uuid not null,
  changed_at timestamptz not null default now(),
  change_reason_type text not null,
  change_reason_note text,
  related_record_type text,
  related_record_id uuid
);

create index if not exists idx_order_status_record_order_changed_at
  on order_status_record(order_id, changed_at desc);
