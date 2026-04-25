begin;

do $$
begin
  if not exists (
    select 1
      from information_schema.tables
     where table_schema = 'aiworker'
       and table_name = 'acceptance_test_case'
  ) then
    raise exception 'PKG-AIW-006 precheck failed: aiworker.acceptance_test_case is missing';
  end if;

  if not exists (
    select 1
      from information_schema.tables
     where table_schema = 'aiworker'
       and table_name = 'acceptance_test_execution'
  ) then
    raise exception 'PKG-AIW-006 precheck failed: aiworker.acceptance_test_execution is missing';
  end if;

  if not exists (
    select 1
      from pg_proc p
      join pg_namespace n on n.oid = p.pronamespace
     where n.nspname = 'aiworker'
       and p.proname = 'fn_generate_uuid'
  ) then
    raise exception 'PKG-AIW-006 precheck failed: aiworker.fn_generate_uuid is missing';
  end if;

  if not exists (
    select 1
      from pg_proc p
      join pg_namespace n on n.oid = p.pronamespace
     where n.nspname = 'aiworker'
       and p.proname = 'fn_record_acceptance_test_execution'
  ) then
    raise exception 'PKG-AIW-006 precheck failed: aiworker.fn_record_acceptance_test_execution is missing';
  end if;
end
$$;

create table if not exists aiworker.acceptance_execution_batch (
  acceptance_execution_batch_id uuid primary key,
  batch_code text not null unique,
  batch_status_code text not null default 'OPEN',
  started_at timestamptz not null default now(),
  completed_at timestamptz,
  started_by text not null,
  approved_by text,
  note_text text
);

create table if not exists aiworker.acceptance_verification_item (
  acceptance_verification_item_code text primary key,
  bucket_code text not null,
  acceptance_test_case_code text references aiworker.acceptance_test_case(acceptance_test_case_code),
  title text not null,
  critical_flag boolean not null default false,
  expected_result_code text not null,
  active_flag boolean not null default true,
  created_at timestamptz not null default now()
);

create table if not exists aiworker.acceptance_verification_result (
  acceptance_verification_result_id bigint generated always as identity primary key,
  acceptance_execution_batch_id uuid not null references aiworker.acceptance_execution_batch(acceptance_execution_batch_id),
  acceptance_verification_item_code text not null references aiworker.acceptance_verification_item(acceptance_verification_item_code),
  acceptance_test_execution_id bigint references aiworker.acceptance_test_execution(acceptance_test_execution_id),
  actual_result_code text not null,
  pass_flag boolean not null,
  note_text text,
  executed_at timestamptz not null default now(),
  executed_by text not null
);

create index if not exists ix_acceptance_verification_result_batch
  on aiworker.acceptance_verification_result (acceptance_execution_batch_id, executed_at desc);

create index if not exists ix_acceptance_verification_result_item
  on aiworker.acceptance_verification_result (acceptance_verification_item_code, executed_at desc);

create table if not exists aiworker.acceptance_verification_runbook_log (
  acceptance_verification_runbook_log_id bigint generated always as identity primary key,
  acceptance_execution_batch_id uuid not null references aiworker.acceptance_execution_batch(acceptance_execution_batch_id),
  phase_code text not null,
  result_code text not null,
  note_text text,
  executed_at timestamptz not null default now(),
  executed_by text not null
);

create index if not exists ix_acceptance_verification_runbook_log_batch
  on aiworker.acceptance_verification_runbook_log (acceptance_execution_batch_id, executed_at desc);

commit;
