begin;

do $$
begin
  if not exists (
    select 1 from information_schema.tables
    where table_schema = 'aiworker' and table_name = 'worker_privileged_profile'
  ) then
    raise exception 'PKG-AIW-010 precheck failed: aiworker.worker_privileged_profile is missing';
  end if;

  if not exists (
    select 1 from information_schema.tables
    where table_schema = 'aiworker' and table_name = 'worker_restricted_handling_policy'
  ) then
    raise exception 'PKG-AIW-010 precheck failed: aiworker.worker_restricted_handling_policy is missing';
  end if;

  if not exists (
    select 1
      from pg_proc p
      join pg_namespace n on n.oid = p.pronamespace
     where n.nspname = 'aiworker'
       and p.proname = 'fn_apply_worker_privileged_context_change'
  ) then
    raise exception 'PKG-AIW-010 precheck failed: aiworker.fn_apply_worker_privileged_context_change is missing';
  end if;
end
$$;

create table if not exists aiworker.restricted_privileged_smoke_registry (
  smoke_code text primary key,
  smoke_status_code text not null,
  note_text text,
  applied_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists aiworker.restricted_privileged_smoke_log (
  restricted_privileged_smoke_log_id bigint generated always as identity primary key,
  flow_code text not null,
  result_code text not null,
  note_text text,
  executed_at timestamptz not null default now(),
  executed_by text not null
);

create index if not exists ix_restricted_privileged_smoke_log_flow
  on aiworker.restricted_privileged_smoke_log (flow_code, executed_at desc);

commit;
