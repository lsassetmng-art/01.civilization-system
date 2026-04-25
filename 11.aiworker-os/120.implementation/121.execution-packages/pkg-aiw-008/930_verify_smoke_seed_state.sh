#!/data/data/com.termux/files/usr/bin/bash
set -eu
set -o pipefail

if [ "${PERSONA_DATABASE_URL:-}" = "" ]; then
  printf '%s\n' 'ERROR: PERSONA_DATABASE_URL is not set.'
  exit 1
fi

printf '%s\n' '============================================================'
printf '%s\n' 'PKG-AIW-008 VERIFY SMOKE SEED STATE'
printf '%s\n' '============================================================'

psql "$PERSONA_DATABASE_URL" -At <<'SQL'
select 'worker_master.smoke_count=' || count(*)
from aiworker.worker_master
where worker_id in (
  '71000000-0000-0000-0000-000000001001'::uuid,
  '71000000-0000-0000-0000-000000001002'::uuid
);

select 'payload_document.smoke_count=' || count(*)
from aiworker.payload_document
where payload_ref in (
  'SMOKE_COMMAND_ASSIGNMENT_V1',
  'SMOKE_DRAFT_ASSIGNMENT_V1',
  'SMOKE_STAGING_ASSIGNMENT_V1',
  'SMOKE_INTAKE_ASSIGNMENT_V1'
);

select 'official_intake_request.smoke_count=' || count(*)
from aiworker.official_intake_request
where intake_id = '71000000-0000-0000-0000-000000003104'::uuid;

select 'smoke_seed_registry.count=' || count(*)
from aiworker.smoke_seed_registry;

select 'smoke_flow_execution_log.count=' || count(*)
from aiworker.smoke_flow_execution_log;
SQL

printf '%s\n' '============================================================'
printf '%s\n' 'PKG-AIW-008 VERIFY SMOKE SEED STATE FINISHED'
printf '%s\n' '============================================================'
