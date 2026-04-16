# ============================================================
# ORDER FLOW DDL DRAFT EXECUTION AND SCHEDULE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero
review_required:
- Sato

purpose:
DDL draft for inventory, supply, lead time, and schedule tables.

~~~sql
create table if not exists order_inventory_check_record (
  order_inventory_check_record_id uuid primary key,
  order_id uuid not null references order_record(order_id) on delete cascade,
  inventory_status text not null,
  freshness_type text not null,
  inventory_source_type text not null,
  source_system_name text,
  source_reference_id text,
  summary_note text,
  checked_at timestamptz not null default now(),
  checked_by uuid not null,
  constraint chk_inventory_status
    check (inventory_status in (
      'not_checked','available','partially_available','unavailable',
      'replenishment_required','stale'
    )),
  constraint chk_freshness_type
    check (freshness_type in ('fresh','cached','stale','unknown')),
  constraint chk_inventory_source_type
    check (inventory_source_type in (
      'erp','app_local','external_reference','manual_confirmation'
    ))
);

create index if not exists idx_order_inventory_check_record_order_checked_at
  on order_inventory_check_record(order_id, checked_at desc);

create table if not exists order_supply_status_record (
  order_supply_status_record_id uuid primary key,
  order_id uuid not null references order_record(order_id) on delete cascade,
  supply_status_type text not null,
  expected_replenishment_date date,
  supply_note text,
  recorded_at timestamptz not null default now(),
  recorded_by uuid not null,
  constraint chk_supply_status_type
    check (supply_status_type in (
      'immediately_fulfillable','partially_fulfillable',
      'waiting_replenishment','uncertain','blocked'
    ))
);

create index if not exists idx_order_supply_status_record_order_recorded_at
  on order_supply_status_record(order_id, recorded_at desc);

create table if not exists order_lead_time_record (
  order_lead_time_record_id uuid primary key,
  order_id uuid not null references order_record(order_id) on delete cascade,
  lead_time_days integer not null,
  lead_time_basis_type text not null,
  lead_time_note text,
  source_inventory_check_record_id uuid references order_inventory_check_record(order_inventory_check_record_id),
  source_supply_status_record_id uuid references order_supply_status_record(order_supply_status_record_id),
  calculated_at timestamptz not null default now(),
  calculated_by uuid not null,
  constraint chk_lead_time_days
    check (lead_time_days >= 0),
  constraint chk_lead_time_basis_type
    check (lead_time_basis_type in (
      'stock_available','partial_stock_waiting_supply',
      'made_to_order','supplier_confirmation','manual_estimation'
    ))
);

create index if not exists idx_order_lead_time_record_order_calculated_at
  on order_lead_time_record(order_id, calculated_at desc);

create table if not exists delivery_schedule_calculation_record (
  delivery_schedule_calculation_record_id uuid primary key,
  order_id uuid not null references order_record(order_id) on delete cascade,
  calculation_basis_summary text not null,
  source_lead_time_record_id uuid references order_lead_time_record(order_lead_time_record_id),
  source_inventory_check_record_id uuid references order_inventory_check_record(order_inventory_check_record_id),
  calculation_note text,
  calculated_at timestamptz not null default now(),
  calculated_by uuid not null
);

create index if not exists idx_delivery_schedule_calc_record_order_calculated_at
  on delivery_schedule_calculation_record(order_id, calculated_at desc);

create table if not exists delivery_schedule_candidate (
  delivery_schedule_candidate_id uuid primary key,
  order_id uuid not null references order_record(order_id) on delete cascade,
  delivery_schedule_calculation_record_id uuid not null references delivery_schedule_calculation_record(delivery_schedule_calculation_record_id) on delete cascade,
  candidate_type text not null,
  candidate_label text not null,
  candidate_start_date date not null,
  candidate_end_date date not null,
  confidence_type text not null,
  basis_note text,
  rank_order integer,
  proposal_ready_flag boolean not null default false,
  generated_at timestamptz not null default now(),
  generated_by uuid not null,
  constraint chk_candidate_type
    check (candidate_type in ('single_date','date_range')),
  constraint chk_confidence_type
    check (confidence_type in ('high','medium','low','manual')),
  constraint chk_candidate_date_range
    check (candidate_end_date >= candidate_start_date)
);

create index if not exists idx_delivery_schedule_candidate_order_rank
  on delivery_schedule_candidate(order_id, rank_order, generated_at desc);

create table if not exists delivery_schedule_confirmed_record (
  delivery_schedule_confirmed_record_id uuid primary key,
  order_id uuid not null references order_record(order_id) on delete cascade,
  source_candidate_id uuid references delivery_schedule_candidate(delivery_schedule_candidate_id),
  confirmed_date_or_start date not null,
  confirmed_end_date date not null,
  confirmation_basis_type text not null,
  confirmation_note text,
  confirmed_at timestamptz not null default now(),
  confirmed_by uuid not null,
  constraint chk_confirmed_date_range
    check (confirmed_end_date >= confirmed_date_or_start)
);

create index if not exists idx_delivery_schedule_confirmed_record_order_confirmed_at
  on delivery_schedule_confirmed_record(order_id, confirmed_at desc);
~~~

notes:
- internal confirmed schedule remains separate from customer response
