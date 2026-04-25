begin;

do $$
begin
  if not exists (
    select 1 from information_schema.tables
    where table_schema = 'aiworker' and table_name = 'payload_schema_catalog'
  ) then
    raise exception 'PKG-AIW-009 precheck failed: aiworker.payload_schema_catalog is missing';
  end if;

  if not exists (
    select 1 from information_schema.tables
    where table_schema = 'aiworker' and table_name = 'payload_document'
  ) then
    raise exception 'PKG-AIW-009 precheck failed: aiworker.payload_document is missing';
  end if;

  if not exists (
    select 1
      from pg_proc p
      join pg_namespace n on n.oid = p.pronamespace
     where n.nspname = 'aiworker'
       and p.proname = 'fn_validate_payload_by_schema_name'
  ) then
    raise exception 'PKG-AIW-009 precheck failed: aiworker.fn_validate_payload_by_schema_name is missing';
  end if;

  if not exists (
    select 1
      from pg_proc p
      join pg_namespace n on n.oid = p.pronamespace
     where n.nspname = 'aiworker'
       and p.proname = 'fn_store_payload_document'
  ) then
    raise exception 'PKG-AIW-009 precheck failed: aiworker.fn_store_payload_document is missing';
  end if;
end
$$;

create table if not exists aiworker.business_event_contract_registry (
  contract_code text primary key,
  direction_code text not null,
  event_type text not null,
  payload_schema_name text not null references aiworker.payload_schema_catalog(payload_schema_name),
  source_system text not null,
  target_system text not null,
  required_top_level_keys jsonb not null default '[]'::jsonb,
  active_flag boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists aiworker.business_event_validation_log (
  business_event_validation_log_id bigint generated always as identity primary key,
  contract_code text references aiworker.business_event_contract_registry(contract_code),
  direction_code text,
  event_type text,
  validation_result_code text not null,
  related_business_request_id uuid,
  payload_ref text,
  note_text text,
  validated_at timestamptz not null default now(),
  validated_by text not null
);

create index if not exists ix_business_event_validation_log_contract
  on aiworker.business_event_validation_log (contract_code, validated_at desc);

create index if not exists ix_business_event_validation_log_payload_ref
  on aiworker.business_event_validation_log (payload_ref, validated_at desc);

create table if not exists aiworker.business_cross_boundary_smoke_log (
  business_cross_boundary_smoke_log_id bigint generated always as identity primary key,
  flow_code text not null,
  result_code text not null,
  note_text text,
  executed_at timestamptz not null default now(),
  executed_by text not null
);

create index if not exists ix_business_cross_boundary_smoke_log_flow
  on aiworker.business_cross_boundary_smoke_log (flow_code, executed_at desc);

insert into aiworker.business_event_contract_registry (
  contract_code,
  direction_code,
  event_type,
  payload_schema_name,
  source_system,
  target_system,
  required_top_level_keys,
  active_flag,
  created_at,
  updated_at
)
values
(
  'BIZ_INBOUND_REQUEST_EVENT_V1',
  'INBOUND',
  'BUSINESS_REQUEST_EVENT',
  'PAYLOAD_BUSINESS_REQUEST_EVENT_V1',
  'business',
  'aiworker',
  '["event_type","event_version","business_request_id","tenant_company_id","requested_domain","requested_role","requested_lane","requested_app_scope","priority_band","request_created_at","request_payload"]'::jsonb,
  true,
  now(),
  now()
),
(
  'AIW_OUTBOUND_RESULT_EVENT_V1',
  'OUTBOUND',
  'AIWORKER_RESULT_EVENT',
  'PAYLOAD_RESULT_EVENT_V1',
  'aiworker',
  'business',
  '["payload_version","event_type","event_id","aiworker_status_code","result_code","result_summary_code","summary_payload","emitted_at"]'::jsonb,
  true,
  now(),
  now()
)
on conflict (contract_code) do update
  set direction_code = excluded.direction_code,
      event_type = excluded.event_type,
      payload_schema_name = excluded.payload_schema_name,
      source_system = excluded.source_system,
      target_system = excluded.target_system,
      required_top_level_keys = excluded.required_top_level_keys,
      active_flag = true,
      updated_at = now();

commit;
