begin;

do $$
begin
  if not exists (
    select 1 from information_schema.tables
    where table_schema = 'aiworker' and table_name = 'acceptance_execution_batch'
  ) then
    raise exception 'PKG-AIW-011 precheck failed: aiworker.acceptance_execution_batch is missing';
  end if;

  if not exists (
    select 1 from information_schema.tables
    where table_schema = 'aiworker' and table_name = 'acceptance_verification_item'
  ) then
    raise exception 'PKG-AIW-011 precheck failed: aiworker.acceptance_verification_item is missing';
  end if;

  if not exists (
    select 1 from information_schema.tables
    where table_schema = 'aiworker' and table_name = 'acceptance_verification_result'
  ) then
    raise exception 'PKG-AIW-011 precheck failed: aiworker.acceptance_verification_result is missing';
  end if;

  if not exists (
    select 1
      from pg_proc p
      join pg_namespace n on n.oid = p.pronamespace
     where n.nspname = 'aiworker'
       and p.proname = 'fn_open_acceptance_execution_batch'
  ) then
    raise exception 'PKG-AIW-011 precheck failed: aiworker.fn_open_acceptance_execution_batch is missing';
  end if;

  if not exists (
    select 1
      from pg_proc p
      join pg_namespace n on n.oid = p.pronamespace
     where n.nspname = 'aiworker'
       and p.proname = 'fn_finalize_acceptance_execution_batch'
  ) then
    raise exception 'PKG-AIW-011 precheck failed: aiworker.fn_finalize_acceptance_execution_batch is missing';
  end if;
end
$$;

create table if not exists aiworker.acceptance_batch_runner_registry (
  runner_code text primary key,
  runner_status_code text not null,
  note_text text,
  applied_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists aiworker.acceptance_batch_runner_log (
  acceptance_batch_runner_log_id bigint generated always as identity primary key,
  acceptance_execution_batch_id uuid references aiworker.acceptance_execution_batch(acceptance_execution_batch_id),
  check_code text not null,
  result_code text not null,
  note_text text,
  executed_at timestamptz not null default now(),
  executed_by text not null
);

create index if not exists ix_acceptance_batch_runner_log_batch
  on aiworker.acceptance_batch_runner_log (acceptance_execution_batch_id, executed_at desc);

insert into aiworker.acceptance_batch_runner_registry (
  runner_code,
  runner_status_code,
  note_text,
  applied_at,
  updated_at
)
values (
  'FORMAL_ACCEPTANCE_BATCH_V1',
  'APPLIED',
  'Formal acceptance batch runner support is applied',
  now(),
  now()
)
on conflict (runner_code) do update
  set runner_status_code = excluded.runner_status_code,
      note_text = excluded.note_text,
      updated_at = now();

commit;
