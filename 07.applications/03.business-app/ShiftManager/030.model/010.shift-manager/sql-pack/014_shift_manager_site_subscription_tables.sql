-- ============================================================
-- SHIFT MANAGER SITE / SUBSCRIPTION TABLES
-- ============================================================

create table if not exists app_shift_manager.shift_site_license (
  site_license_id uuid primary key,
  company_id uuid not null,
  site_id uuid not null,
  site_code text not null,
  site_name text not null,
  active_flag boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint uq_shift_site_license_company_site
    unique (company_id, site_id),
  constraint uq_shift_site_license_company_site_code
    unique (company_id, site_code)
);

create table if not exists app_shift_manager.shift_site_subscription_status (
  site_subscription_status_id uuid primary key,
  site_license_id uuid not null,
  subscription_status text not null,
  trial_started_at timestamptz null,
  trial_ends_at timestamptz null,
  active_started_at timestamptz null,
  grace_started_at timestamptz null,
  grace_ends_at timestamptz null,
  inactive_started_at timestamptz null,
  current_period_started_at timestamptz null,
  current_period_ends_at timestamptz null,
  last_billing_reference text null,
  status_changed_at timestamptz not null default now(),
  status_changed_reason text null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint fk_shift_site_subscription_status_license
    foreign key (site_license_id)
    references app_shift_manager.shift_site_license(site_license_id),
  constraint ck_shift_site_subscription_status_status
    check (subscription_status in ('trial', 'active', 'grace', 'inactive'))
);

create table if not exists app_shift_manager.shift_site_feature_gate_log (
  feature_gate_log_id uuid primary key,
  site_license_id uuid not null,
  person_id uuid null,
  feature_code text not null,
  decision text not null,
  evaluated_status text not null,
  evaluated_at timestamptz not null default now(),
  reason_code text null,
  details_json jsonb null,
  constraint fk_shift_site_feature_gate_log_license
    foreign key (site_license_id)
    references app_shift_manager.shift_site_license(site_license_id),
  constraint ck_shift_site_feature_gate_log_decision
    check (decision in ('allowed', 'blocked')),
  constraint ck_shift_site_feature_gate_log_status
    check (evaluated_status in ('trial', 'active', 'grace', 'inactive'))
);
