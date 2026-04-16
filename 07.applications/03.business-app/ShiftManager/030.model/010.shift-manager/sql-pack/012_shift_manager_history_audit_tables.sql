-- ============================================================
-- SHIFT MANAGER HISTORY / AUDIT TABLES
-- ============================================================

create table if not exists app_shift_manager.shift_publish_history (
  publish_history_id uuid primary key,
  schedule_id uuid not null,
  publication_id uuid not null,
  action_type text not null,
  action_by_person_id uuid not null,
  action_at timestamptz not null default now(),
  action_note text null,
  constraint ck_shift_publish_history_action
    check (action_type in ('publish', 'republish', 'cancel_publication'))
);

create table if not exists app_shift_manager.shift_share_history (
  share_history_id uuid primary key,
  share_rule_id uuid not null,
  action_type text not null,
  action_by_person_id uuid not null,
  action_at timestamptz not null default now(),
  before_value_json jsonb null,
  after_value_json jsonb null,
  constraint ck_shift_share_history_action
    check (action_type in ('create_rule', 'update_rule', 'disable_rule', 'expand_scope', 'reduce_scope'))
);

create table if not exists app_shift_manager.shift_access_audit (
  access_audit_id uuid primary key,
  publication_id uuid not null,
  viewer_person_id uuid not null,
  visible_person_id uuid not null,
  access_type text not null,
  accessed_at timestamptz not null default now(),
  client_type text null,
  constraint ck_shift_access_audit_type
    check (access_type in ('self_view', 'team_view', 'department_view', 'manager_view'))
);
