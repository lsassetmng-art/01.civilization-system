begin;

do $$
begin
  if not exists (
    select 1 from information_schema.tables
    where table_schema = 'aiworker' and table_name = 'worker_master'
  ) then
    raise exception 'PKG-AIW-008 precheck failed: aiworker.worker_master is missing';
  end if;

  if not exists (
    select 1 from information_schema.tables
    where table_schema = 'aiworker' and table_name = 'payload_document'
  ) then
    raise exception 'PKG-AIW-008 precheck failed: aiworker.payload_document is missing';
  end if;

  if not exists (
    select 1
      from pg_proc p
      join pg_namespace n on n.oid = p.pronamespace
     where n.nspname = 'aiworker'
       and p.proname = 'fn_store_payload_document'
  ) then
    raise exception 'PKG-AIW-008 precheck failed: aiworker.fn_store_payload_document is missing';
  end if;

  if not exists (
    select 1
      from pg_proc p
      join pg_namespace n on n.oid = p.pronamespace
     where n.nspname = 'aiworker'
       and p.proname = 'fn_apply_worker_assignment_state'
  ) then
    raise exception 'PKG-AIW-008 precheck failed: aiworker.fn_apply_worker_assignment_state is missing';
  end if;

  if not exists (
    select 1
      from pg_proc p
      join pg_namespace n on n.oid = p.pronamespace
     where n.nspname = 'aiworker'
       and p.proname = 'fn_register_request_lineage'
  ) then
    raise exception 'PKG-AIW-008 precheck failed: aiworker.fn_register_request_lineage is missing';
  end if;
end
$$;

create table if not exists aiworker.smoke_seed_registry (
  smoke_seed_code text primary key,
  smoke_seed_status_code text not null,
  note_text text,
  applied_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists aiworker.smoke_flow_execution_log (
  smoke_flow_execution_log_id bigint generated always as identity primary key,
  flow_code text not null,
  result_code text not null,
  note_text text,
  executed_at timestamptz not null default now(),
  executed_by text not null
);

create index if not exists ix_smoke_flow_execution_log_flow
  on aiworker.smoke_flow_execution_log (flow_code, executed_at desc);

commit;
