begin;

create table if not exists aiworker.payload_schema_catalog (
  payload_schema_name text primary key,
  payload_version text not null,
  payload_family_code text not null,
  description text,
  active_flag boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists aiworker.payload_document (
  payload_ref text primary key,
  payload_schema_name text not null references aiworker.payload_schema_catalog(payload_schema_name),
  payload_json jsonb not null,
  payload_hash text,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists aiworker.payload_validation_log (
  payload_validation_log_id bigint generated always as identity primary key,
  payload_ref text,
  payload_schema_name text not null,
  validation_result_code text not null,
  validation_note text,
  validated_at timestamptz not null default now()
);

insert into aiworker.payload_schema_catalog (
  payload_schema_name,
  payload_version,
  payload_family_code,
  description
)
values
  ('PAYLOAD_COMMAND_ROW_V1',          '1.0', 'COMMAND',          'Command row payload v1'),
  ('PAYLOAD_DRAFT_ROW_V1',            '1.0', 'DRAFT',            'Draft row payload v1'),
  ('PAYLOAD_STAGING_ROW_V1',          '1.0', 'STAGING',          'Staging row payload v1'),
  ('PAYLOAD_OFFICIAL_INTAKE_V1',      '1.0', 'OFFICIAL_INTAKE',  'Official intake payload v1'),
  ('PAYLOAD_RESULT_EVENT_V1',         '1.0', 'RESULT_EVENT',     'Result event payload v1'),
  ('PAYLOAD_BUSINESS_REQUEST_EVENT_V1','1.0','BUSINESS_REQUEST', 'Business request event payload v1')
on conflict (payload_schema_name) do update
  set payload_version = excluded.payload_version,
      payload_family_code = excluded.payload_family_code,
      description = excluded.description,
      active_flag = true,
      updated_at = now();

create index if not exists ix_payload_document_schema_name
  on aiworker.payload_document (payload_schema_name);

create index if not exists ix_payload_validation_log_payload_ref
  on aiworker.payload_validation_log (payload_ref);

commit;
