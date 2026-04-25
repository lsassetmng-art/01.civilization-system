begin;

create table if not exists aiworker.request_lineage_registry (
  lineage_key text primary key,
  request_hash text not null,
  business_request_id uuid,
  worker_id uuid,
  target_truth_surface text not null,
  controlled_function_code text not null,
  requested_transition_code text,
  payload_version text,
  payload_ref text,
  payload_hash text,
  intake_id uuid references aiworker.official_intake_request(intake_id),
  replay_outcome_code text not null default 'APPLY_NEW',
  canonical_applied_flag boolean not null default false,
  last_event_id uuid references aiworker.event_outbox(event_id),
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create unique index if not exists ux_request_lineage_registry_request_hash_scope
  on aiworker.request_lineage_registry (
    request_hash,
    target_truth_surface,
    controlled_function_code,
    coalesce(worker_id::text, ''),
    coalesce(requested_transition_code, ''),
    coalesce(payload_version, '')
  );

create table if not exists aiworker.replay_decision_log (
  replay_decision_log_id bigint generated always as identity primary key,
  request_hash text not null,
  business_request_id uuid,
  worker_id uuid,
  target_truth_surface text not null,
  controlled_function_code text not null,
  replay_decision_code text not null,
  prior_intake_id uuid,
  prior_event_id uuid,
  decision_reason_code text,
  decided_at timestamptz not null default now(),
  decided_by text not null
);

create index if not exists ix_replay_decision_log_request_hash
  on aiworker.replay_decision_log (request_hash, decided_at desc);

create table if not exists aiworker.recovery_incident (
  recovery_incident_id uuid primary key,
  incident_code text not null unique,
  recovery_family_code text not null,
  incident_status_code text not null,
  note_text text,
  opened_at timestamptz not null default now(),
  closed_at timestamptz,
  opened_by text not null,
  approved_by text
);

create table if not exists aiworker.recovery_execution_log (
  recovery_execution_log_id bigint generated always as identity primary key,
  recovery_incident_id uuid not null references aiworker.recovery_incident(recovery_incident_id),
  execution_phase_code text not null,
  dry_run_flag boolean not null default true,
  result_code text not null,
  affected_row_count integer,
  note_text text,
  executed_at timestamptz not null default now(),
  executed_by text not null
);

create index if not exists ix_recovery_execution_log_incident
  on aiworker.recovery_execution_log (recovery_incident_id, executed_at desc);

create table if not exists aiworker.acceptance_test_case (
  acceptance_test_case_code text primary key,
  bucket_code text not null,
  title text not null,
  critical_flag boolean not null default false,
  expected_result_code text not null,
  active_flag boolean not null default true,
  created_at timestamptz not null default now()
);

create table if not exists aiworker.acceptance_test_execution (
  acceptance_test_execution_id bigint generated always as identity primary key,
  acceptance_test_case_code text not null references aiworker.acceptance_test_case(acceptance_test_case_code),
  execution_result_code text not null,
  note_text text,
  executed_at timestamptz not null default now(),
  executed_by text not null
);

create index if not exists ix_acceptance_test_execution_case
  on aiworker.acceptance_test_execution (acceptance_test_case_code, executed_at desc);

commit;
