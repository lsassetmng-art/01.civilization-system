-- ============================================================
-- STATICART PHASE 1 : REVIEW AND AUDIT
-- reviewer: Sato
-- ============================================================

create table if not exists staticart.asset_review_request (
  review_request_id uuid primary key,
  asset_id uuid not null references staticart.asset_master(asset_id) on delete cascade,
  review_round_no integer not null check (review_round_no >= 1),
  submitted_by uuid not null,
  submitted_at timestamptz not null default now(),
  review_status staticart.review_status not null,
  requested_review_types text[] not null default '{}',
  self_check_passed boolean not null,
  closed_at timestamptz null,
  constraint asset_review_request_round_uq
    unique (asset_id, review_round_no)
);

create table if not exists staticart.asset_review_decision (
  review_decision_id uuid primary key,
  review_request_id uuid not null references staticart.asset_review_request(review_request_id) on delete cascade,
  decision_by uuid not null,
  decision_status staticart.review_status not null,
  decision_reason_code text null,
  decision_comment text null,
  decided_at timestamptz not null default now()
);

create table if not exists staticart.asset_audit_event (
  audit_event_id uuid primary key,
  asset_id uuid not null references staticart.asset_master(asset_id) on delete cascade,
  user_id uuid null,
  event_type text not null,
  from_state text null,
  to_state text null,
  reason_code text null,
  external_ref text null,
  detail_json jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default now()
);

create index if not exists idx_staticart_asset_review_request_asset
  on staticart.asset_review_request (asset_id, submitted_at desc);

create index if not exists idx_staticart_asset_audit_event_asset
  on staticart.asset_audit_event (asset_id, created_at desc);

create index if not exists idx_staticart_asset_audit_event_event_type
  on staticart.asset_audit_event (event_type, created_at desc);
