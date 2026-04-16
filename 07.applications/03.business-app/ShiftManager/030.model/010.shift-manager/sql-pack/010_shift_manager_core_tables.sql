-- ============================================================
-- SHIFT MANAGER CORE TABLES
-- ============================================================

create table if not exists app_shift_manager.shift_schedule (
  schedule_id uuid primary key,
  company_id uuid not null,
  schedule_code text not null,
  schedule_name text not null,
  target_scope_type text not null,
  target_scope_id uuid null,
  target_period_type text not null,
  period_start_date date not null,
  period_end_date date not null,
  status text not null,
  draft_version_no integer not null default 1,
  current_publication_id uuid null,
  generation_mode text not null default 'manual',
  auto_generated_flag boolean not null default false,
  has_generation_warnings boolean not null default false,
  generation_rule_id uuid null,
  auto_generation_summary_json jsonb null,
  auto_generated_at timestamptz null,
  auto_generated_by_person_id uuid null,
  created_by_person_id uuid not null,
  updated_by_person_id uuid not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  deleted_at timestamptz null,
  constraint uq_shift_schedule_company_code
    unique (company_id, schedule_code),
  constraint ck_shift_schedule_status
    check (status in ('draft', 'published', 'superseded', 'closed')),
  constraint ck_shift_schedule_target_period_type
    check (target_period_type in ('day', 'week', 'month')),
  constraint ck_shift_schedule_generation_mode
    check (generation_mode in ('manual', 'auto_generated', 'auto_generated_then_edited')),
  constraint ck_shift_schedule_period
    check (period_end_date >= period_start_date)
);

create table if not exists app_shift_manager.shift_assignment (
  assignment_id uuid primary key,
  schedule_id uuid not null,
  person_id uuid not null,
  shift_date date not null,
  start_time time not null,
  end_time time not null,
  role_code text null,
  office_id uuid null,
  department_id uuid null,
  team_id uuid null,
  memo text null,
  row_status text not null default 'active',
  source_type text not null default 'manual',
  created_by_person_id uuid not null,
  updated_by_person_id uuid not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  deleted_at timestamptz null,
  constraint fk_shift_assignment_schedule
    foreign key (schedule_id)
    references app_shift_manager.shift_schedule(schedule_id),
  constraint ck_shift_assignment_row_status
    check (row_status in ('active', 'removed', 'superseded')),
  constraint ck_shift_assignment_source_type
    check (source_type in ('manual', 'auto_generated', 'auto_adjusted')),
  constraint ck_shift_assignment_time
    check (end_time > start_time)
);

create table if not exists app_shift_manager.shift_publication (
  publication_id uuid primary key,
  schedule_id uuid not null,
  publication_version_no integer not null,
  publication_status text not null,
  publication_note text null,
  source_generation_mode text null,
  published_by_person_id uuid not null,
  published_at timestamptz not null default now(),
  superseded_at timestamptz null,
  notification_requested boolean not null default true,
  erp_export_required boolean not null default false,
  created_at timestamptz not null default now(),
  constraint fk_shift_publication_schedule
    foreign key (schedule_id)
    references app_shift_manager.shift_schedule(schedule_id),
  constraint uq_shift_publication_schedule_version
    unique (schedule_id, publication_version_no),
  constraint ck_shift_publication_status
    check (publication_status in ('active', 'superseded', 'cancelled'))
);

create table if not exists app_shift_manager.shift_publication_assignment (
  publication_assignment_id uuid primary key,
  publication_id uuid not null,
  schedule_id uuid not null,
  person_id uuid not null,
  shift_date date not null,
  start_time time not null,
  end_time time not null,
  role_code text null,
  office_id uuid null,
  department_id uuid null,
  team_id uuid null,
  memo text null,
  created_at timestamptz not null default now(),
  constraint fk_shift_publication_assignment_publication
    foreign key (publication_id)
    references app_shift_manager.shift_publication(publication_id),
  constraint ck_shift_publication_assignment_time
    check (end_time > start_time)
);

create table if not exists app_shift_manager.shift_share_rule (
  share_rule_id uuid primary key,
  company_id uuid not null,
  rule_name text not null,
  scope_type text not null,
  visibility_level text not null,
  active_flag boolean not null default true,
  applies_to_schedule_id uuid null,
  applies_to_publication_id uuid null,
  created_by_person_id uuid not null,
  updated_by_person_id uuid not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  disabled_at timestamptz null,
  constraint ck_shift_share_rule_scope_type
    check (scope_type in ('person', 'team', 'department', 'management_scope')),
  constraint ck_shift_share_rule_visibility_level
    check (visibility_level in ('self_only', 'assigned_members', 'team_visible', 'department_visible', 'manager_visible'))
);

create table if not exists app_shift_manager.shift_share_rule_target (
  share_rule_target_id uuid primary key,
  share_rule_id uuid not null,
  target_type text not null,
  target_id uuid not null,
  created_at timestamptz not null default now(),
  constraint fk_shift_share_rule_target_rule
    foreign key (share_rule_id)
    references app_shift_manager.shift_share_rule(share_rule_id),
  constraint ck_shift_share_rule_target_type
    check (target_type in ('person', 'team', 'department', 'role'))
);

create table if not exists app_shift_manager.shift_view_scope (
  view_scope_id uuid primary key,
  publication_id uuid not null,
  viewer_person_id uuid not null,
  visible_person_id uuid not null,
  visibility_reason text not null,
  active_flag boolean not null default true,
  evaluated_at timestamptz not null default now(),
  expires_at timestamptz null,
  constraint fk_shift_view_scope_publication
    foreign key (publication_id)
    references app_shift_manager.shift_publication(publication_id),
  constraint uq_shift_view_scope_publication_viewer_visible
    unique (publication_id, viewer_person_id, visible_person_id),
  constraint ck_shift_view_scope_reason
    check (visibility_reason in ('self', 'shared_person', 'shared_team', 'shared_department', 'management_scope'))
);

create table if not exists app_shift_manager.shift_notification (
  notification_id uuid primary key,
  notification_type text not null,
  channel_type text not null default 'in_app',
  target_person_id uuid not null,
  schedule_id uuid null,
  publication_id uuid null,
  title text not null,
  body text null,
  delivery_status text not null,
  urgent_flag boolean not null default false,
  deep_link_path text null,
  payload_json jsonb null,
  related_shift_date date null,
  related_visible_person_id uuid null,
  queued_at timestamptz not null default now(),
  delivered_at timestamptz null,
  read_at timestamptz null,
  retry_count integer not null default 0,
  last_error text null,
  constraint ck_shift_notification_type
    check (notification_type in ('publish', 'republish', 'same_day', 'urgent_change')),
  constraint ck_shift_notification_channel_type
    check (channel_type in ('in_app', 'push', 'line', 'slack', 'sms', 'mail')),
  constraint ck_shift_notification_delivery_status
    check (delivery_status in ('queued', 'sent', 'failed', 'read'))
);

create table if not exists app_shift_manager.erp_linkage_state (
  linkage_id uuid primary key,
  publication_id uuid not null,
  schedule_id uuid not null,
  export_status text not null,
  export_mode text not null,
  export_requested_by uuid null,
  export_requested_at timestamptz null,
  exported_at timestamptz null,
  retry_count integer not null default 0,
  external_reference_id text null,
  last_error_code text null,
  last_error_message text null,
  updated_at timestamptz not null default now(),
  constraint fk_erp_linkage_state_publication
    foreign key (publication_id)
    references app_shift_manager.shift_publication(publication_id),
  constraint uq_erp_linkage_state_publication
    unique (publication_id),
  constraint ck_erp_linkage_state_status
    check (export_status in ('not_required', 'pending', 'exporting', 'success', 'failed')),
  constraint ck_erp_linkage_state_mode
    check (export_mode in ('manual', 'automatic'))
);
