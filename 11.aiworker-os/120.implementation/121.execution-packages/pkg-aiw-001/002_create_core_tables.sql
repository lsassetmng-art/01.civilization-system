begin;

create table if not exists aiworker.worker_master (
  worker_id uuid primary key,
  worker_code text not null unique,
  display_label text not null,
  employee_type text not null,
  rank_code text not null,
  domain_code text not null,
  role_code text not null,
  lifecycle_status text not null,
  provider_company_id uuid,
  company_style_profile_code text not null,
  repairable_flag boolean not null default true,
  rebuildable_flag boolean not null default true,
  active_flag boolean not null default true,
  suspended_flag boolean not null default false,
  retired_flag boolean not null default false,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists aiworker.developer_company_master (
  developer_company_id uuid primary key,
  developer_company_code text not null unique,
  developer_company_name text not null,
  default_company_style_profile_code text not null,
  active_flag boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists aiworker.company_style_policy (
  company_style_policy_id uuid primary key,
  developer_company_id uuid not null references aiworker.developer_company_master(developer_company_id),
  company_style_profile_code text not null,
  proposal_tendency_code text not null,
  fallback_tendency_code text not null,
  escalation_tendency_code text not null,
  tone_policy_code text not null,
  restricted_domain_policy_summary text,
  active_flag boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  unique (developer_company_id, company_style_profile_code)
);

create table if not exists aiworker.company_ai_usage_tendency (
  company_ai_usage_tendency_id uuid primary key,
  tenant_company_id uuid not null,
  initiative_preference_code text not null,
  explanation_depth_preference_code text not null,
  approval_strictness_tendency_code text not null,
  retry_tolerance_tendency_code text not null,
  escalation_preference_code text not null,
  automation_comfort_band_code text not null,
  effective_from timestamptz not null,
  effective_to timestamptz,
  updated_at timestamptz not null default now()
);

create table if not exists aiworker.user_ai_usage_tendency (
  user_ai_usage_tendency_id uuid primary key,
  tenant_user_id uuid not null,
  interaction_comfort_band_code text not null,
  response_length_preference_code text not null,
  summary_preference_code text not null,
  support_style_preference_code text not null,
  initiative_preference_code text not null,
  review_frequency_preference_code text not null,
  effective_from timestamptz not null,
  effective_to timestamptz,
  updated_at timestamptz not null default now()
);

create table if not exists aiworker.worker_growth_profile (
  worker_growth_profile_id uuid primary key,
  worker_id uuid not null references aiworker.worker_master(worker_id),
  growth_level integer not null default 0,
  stability_score integer not null default 0,
  recovery_learning_score integer not null default 0,
  suggestion_effectiveness_score integer not null default 0,
  escalation_accuracy_score integer not null default 0,
  updated_at timestamptz not null default now(),
  unique (worker_id)
);

create table if not exists aiworker.worker_growth_event (
  worker_growth_event_id uuid primary key,
  worker_id uuid not null references aiworker.worker_master(worker_id),
  growth_event_type text not null,
  event_score_delta integer not null default 0,
  summary_code text not null,
  occurred_at timestamptz not null,
  recorded_at timestamptz not null default now()
);

create table if not exists aiworker.worker_capability_snapshot (
  worker_capability_snapshot_id uuid primary key,
  worker_id uuid not null references aiworker.worker_master(worker_id),
  snapshot_at timestamptz not null,
  capability_band_code text not null,
  specialization_summary_code text not null,
  confidence_band_code text not null,
  recorded_at timestamptz not null default now()
);

create table if not exists aiworker.worker_domain_proficiency (
  worker_domain_proficiency_id uuid primary key,
  worker_id uuid not null references aiworker.worker_master(worker_id),
  domain_code text not null,
  proficiency_score integer not null,
  score_band_code text not null,
  measured_at timestamptz not null,
  updated_at timestamptz not null default now(),
  unique (worker_id, domain_code)
);

create table if not exists aiworker.worker_role_proficiency (
  worker_role_proficiency_id uuid primary key,
  worker_id uuid not null references aiworker.worker_master(worker_id),
  role_code text not null,
  proficiency_score integer not null,
  score_band_code text not null,
  measured_at timestamptz not null,
  updated_at timestamptz not null default now(),
  unique (worker_id, role_code)
);

create table if not exists aiworker.worker_assignment_state (
  worker_assignment_state_id uuid primary key,
  worker_id uuid not null references aiworker.worker_master(worker_id),
  tenant_company_id uuid,
  tenant_user_id uuid,
  assigned_app_scope_code text,
  assigned_project_id uuid,
  assignment_state_code text not null,
  assignment_lane_scope_code text not null,
  effective_from timestamptz not null,
  effective_to timestamptz,
  updated_at timestamptz not null default now()
);

create table if not exists aiworker.worker_dispatch_reservation (
  worker_dispatch_reservation_id uuid primary key,
  business_request_id uuid not null,
  worker_id uuid not null references aiworker.worker_master(worker_id),
  reservation_state_code text not null,
  reserved_from timestamptz not null,
  reserved_to timestamptz,
  priority_band_code text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists aiworker.worker_availability_state (
  worker_availability_state_id uuid primary key,
  worker_id uuid not null references aiworker.worker_master(worker_id),
  availability_state_code text not null,
  concurrent_capacity integer not null default 1,
  current_load_band_code text not null,
  effective_from timestamptz not null,
  effective_to timestamptz,
  updated_at timestamptz not null default now()
);

create table if not exists aiworker.worker_queue_membership (
  worker_queue_membership_id uuid primary key,
  worker_id uuid not null references aiworker.worker_master(worker_id),
  queue_family_code text not null,
  queue_priority_band_code text not null,
  queue_position integer,
  last_assignment_at timestamptz,
  current_load_band_code text not null,
  updated_at timestamptz not null default now(),
  unique (worker_id, queue_family_code)
);

create table if not exists aiworker.worker_company_affinity (
  worker_company_affinity_id uuid primary key,
  worker_id uuid not null references aiworker.worker_master(worker_id),
  tenant_company_id uuid not null,
  company_fit_score integer not null default 0,
  trust_alignment_score integer not null default 0,
  communication_fit_score integer not null default 0,
  updated_at timestamptz not null default now(),
  unique (worker_id, tenant_company_id)
);

create table if not exists aiworker.worker_user_affinity (
  worker_user_affinity_id uuid primary key,
  worker_id uuid not null references aiworker.worker_master(worker_id),
  tenant_user_id uuid not null,
  user_fit_score integer not null default 0,
  trust_alignment_score integer not null default 0,
  communication_fit_score integer not null default 0,
  updated_at timestamptz not null default now(),
  unique (worker_id, tenant_user_id)
);

create table if not exists aiworker.worker_assignment_fit_profile (
  worker_assignment_fit_profile_id uuid primary key,
  worker_id uuid not null references aiworker.worker_master(worker_id),
  app_scope_code text not null,
  assignment_fit_score integer not null default 0,
  fit_reason_summary_code text not null,
  updated_at timestamptz not null default now(),
  unique (worker_id, app_scope_code)
);

create table if not exists aiworker.worker_privileged_profile (
  worker_privileged_profile_id uuid primary key,
  worker_id uuid not null references aiworker.worker_master(worker_id),
  privileged_context_code text not null,
  privileged_gate_code text not null,
  active_flag boolean not null default true,
  updated_at timestamptz not null default now(),
  unique (worker_id, privileged_context_code)
);

create table if not exists aiworker.worker_restricted_handling_policy (
  worker_restricted_handling_policy_id uuid primary key,
  worker_id uuid not null references aiworker.worker_master(worker_id),
  restricted_domain_code text not null,
  handling_policy_code text not null,
  escalation_required_flag boolean not null default true,
  updated_at timestamptz not null default now(),
  unique (worker_id, restricted_domain_code)
);

create table if not exists aiworker.worker_exception_control_state (
  worker_exception_control_state_id uuid primary key,
  worker_id uuid not null references aiworker.worker_master(worker_id),
  exception_state_code text not null,
  exception_reason_code text not null,
  opened_at timestamptz not null,
  closed_at timestamptz,
  updated_at timestamptz not null default now()
);

create table if not exists aiworker.worker_state_change_log (
  worker_state_change_log_id uuid primary key,
  worker_id uuid not null references aiworker.worker_master(worker_id),
  state_family_code text not null,
  old_state_code text,
  new_state_code text not null,
  change_reason_code text not null,
  changed_at timestamptz not null,
  changed_by text not null
);

create table if not exists aiworker.worker_assignment_history (
  worker_assignment_history_id uuid primary key,
  worker_id uuid not null references aiworker.worker_master(worker_id),
  tenant_company_id uuid,
  tenant_user_id uuid,
  app_scope_code text,
  assignment_state_code text not null,
  started_at timestamptz not null,
  ended_at timestamptz,
  recorded_at timestamptz not null default now()
);

create table if not exists aiworker.worker_repair_history (
  worker_repair_history_id uuid primary key,
  worker_id uuid not null references aiworker.worker_master(worker_id),
  repair_ticket_code text not null,
  repair_state_code text not null,
  repair_reason_code text not null,
  opened_at timestamptz not null,
  closed_at timestamptz,
  recorded_at timestamptz not null default now()
);

create table if not exists aiworker.worker_rebuild_history (
  worker_rebuild_history_id uuid primary key,
  worker_id uuid not null references aiworker.worker_master(worker_id),
  rebuild_ticket_code text not null,
  rebuild_state_code text not null,
  rebuild_reason_code text not null,
  opened_at timestamptz not null,
  closed_at timestamptz,
  recorded_at timestamptz not null default now()
);

create table if not exists aiworker.command_row (
  command_id uuid primary key,
  command_type text not null,
  source_system text not null,
  source_actor_type text not null,
  requested_lane text not null,
  requested_domain text,
  requested_role text,
  target_worker_id uuid references aiworker.worker_master(worker_id),
  tenant_company_id uuid,
  tenant_user_id uuid,
  app_scope_code text,
  payload_ref text,
  requested_at timestamptz not null,
  requested_by text not null,
  command_status text not null
);

create table if not exists aiworker.draft_row (
  draft_id uuid primary key,
  command_id uuid not null references aiworker.command_row(command_id),
  worker_id uuid references aiworker.worker_master(worker_id),
  draft_type text not null,
  draft_summary text,
  draft_payload_ref text,
  draft_status text not null,
  created_at timestamptz not null default now(),
  reviewed_at timestamptz
);

create table if not exists aiworker.staging_row (
  staging_id uuid primary key,
  draft_id uuid references aiworker.draft_row(draft_id),
  staging_type text not null,
  normalized_payload_ref text,
  gate_code text not null,
  staging_status text not null,
  created_at timestamptz not null default now()
);

create table if not exists aiworker.official_intake_request (
  intake_id uuid primary key,
  staging_id uuid not null references aiworker.staging_row(staging_id),
  intake_type text not null,
  target_truth_surface text not null,
  controlled_function_code text not null,
  approval_ticket_id text,
  audit_required_flag boolean not null default false,
  submitted_by text not null,
  submitted_at timestamptz not null default now(),
  intake_status text not null,
  applied_at timestamptz
);

create table if not exists aiworker.event_outbox (
  event_id uuid primary key,
  event_type text not null,
  source_system text not null,
  source_entity_type text not null,
  source_entity_id text not null,
  related_business_request_id uuid,
  related_worker_id uuid references aiworker.worker_master(worker_id),
  summary_code text,
  payload_ref text,
  emitted_at timestamptz not null,
  delivered_at timestamptz
);

commit;
