begin;

do $$
begin
  if not exists (select 1 from pg_roles where rolname = 'role_aiw_official_intake_writer') then
    create role role_aiw_official_intake_writer noinherit;
  end if;

  if not exists (select 1 from pg_roles where rolname = 'role_aiw_controlled_function_executor') then
    create role role_aiw_controlled_function_executor noinherit;
  end if;

  if not exists (select 1 from pg_roles where rolname = 'role_aiw_audit_reader') then
    create role role_aiw_audit_reader noinherit;
  end if;

  if not exists (select 1 from pg_roles where rolname = 'role_aiw_operations_reviewer') then
    create role role_aiw_operations_reviewer noinherit;
  end if;

  if not exists (select 1 from pg_roles where rolname = 'role_aiw_event_delivery') then
    create role role_aiw_event_delivery noinherit;
  end if;

  if not exists (select 1 from pg_roles where rolname = 'role_aiw_restricted_reviewer') then
    create role role_aiw_restricted_reviewer noinherit;
  end if;

  if not exists (select 1 from pg_roles where rolname = 'role_aiw_privileged_reviewer') then
    create role role_aiw_privileged_reviewer noinherit;
  end if;

  if not exists (select 1 from pg_roles where rolname = 'role_aiw_no_rawtable_aiworker') then
    create role role_aiw_no_rawtable_aiworker noinherit;
  end if;
end
$$;

do $$
begin
  if not exists (select 1 from information_schema.schemata where schema_name = 'aiworker') then
    raise exception 'PKG-AIW-004 precheck failed: aiworker schema is missing';
  end if;

  if not exists (
    select 1 from information_schema.tables
    where table_schema = 'aiworker' and table_name = 'official_intake_request'
  ) then
    raise exception 'PKG-AIW-004 precheck failed: aiworker.official_intake_request is missing';
  end if;

  if not exists (
    select 1 from information_schema.tables
    where table_schema = 'aiworker' and table_name = 'event_outbox'
  ) then
    raise exception 'PKG-AIW-004 precheck failed: aiworker.event_outbox is missing';
  end if;

  if not exists (
    select 1
      from pg_proc p
      join pg_namespace n on n.oid = p.pronamespace
     where n.nspname = 'aiworker'
       and p.proname = 'fn_apply_worker_assignment_state'
  ) then
    raise exception 'PKG-AIW-004 precheck failed: fn_apply_worker_assignment_state is missing';
  end if;

  if not exists (
    select 1
      from pg_proc p
      join pg_namespace n on n.oid = p.pronamespace
     where n.nspname = 'aiworker'
       and p.proname = 'fn_apply_worker_availability_state'
  ) then
    raise exception 'PKG-AIW-004 precheck failed: fn_apply_worker_availability_state is missing';
  end if;
end
$$;

commit;
