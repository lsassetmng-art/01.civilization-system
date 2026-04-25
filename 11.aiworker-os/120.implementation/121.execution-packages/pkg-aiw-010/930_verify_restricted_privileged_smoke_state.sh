#!/data/data/com.termux/files/usr/bin/bash
set -eu
set -o pipefail

if [ "${PERSONA_DATABASE_URL:-}" = "" ]; then
  printf '%s\n' 'ERROR: PERSONA_DATABASE_URL is not set.'
  exit 1
fi

printf '%s\n' '============================================================'
printf '%s\n' 'PKG-AIW-010 VERIFY RESTRICTED PRIVILEGED SMOKE STATE'
printf '%s\n' '============================================================'

psql "$PERSONA_DATABASE_URL" -At <<'SQL'
select 'restricted_privileged_smoke_registry.count=' || count(*)
from aiworker.restricted_privileged_smoke_registry;

select 'restricted_privileged_smoke_log.count=' || count(*)
from aiworker.restricted_privileged_smoke_log;

select 'latest_smoke.count=' || count(*)
from aiworker.v_restricted_privileged_smoke_latest;

select 'restricted_policy.smoke_worker=' || count(*)
from aiworker.worker_restricted_handling_policy
where worker_id = '71000000-0000-0000-0000-000000001002'::uuid;

select 'privileged_profile.smoke_worker=' || count(*)
from aiworker.worker_privileged_profile
where worker_id = '71000000-0000-0000-0000-000000001002'::uuid;

select 'exception_control.smoke_worker=' || count(*)
from aiworker.worker_exception_control_state
where worker_id = '71000000-0000-0000-0000-000000001002'::uuid;
SQL

printf '%s\n' '============================================================'
printf '%s\n' 'PKG-AIW-010 VERIFY RESTRICTED PRIVILEGED SMOKE STATE FINISHED'
printf '%s\n' '============================================================'
