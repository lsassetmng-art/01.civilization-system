#!/data/data/com.termux/files/usr/bin/bash
set -eu
set -o pipefail

if [ "${PERSONA_DATABASE_URL:-}" = "" ]; then
  printf '%s\n' 'ERROR: PERSONA_DATABASE_URL is not set.'
  exit 1
fi

printf '%s\n' '============================================================'
printf '%s\n' 'PKG-AIW-009 VERIFY BUSINESS EVENT CONTRACT STATE'
printf '%s\n' '============================================================'

psql "$PERSONA_DATABASE_URL" -At <<'SQL'
select 'business_event_contract_registry.count=' || count(*)
from aiworker.business_event_contract_registry;

select 'business_event_validation_log.count=' || count(*)
from aiworker.business_event_validation_log;

select 'business_cross_boundary_smoke_log.count=' || count(*)
from aiworker.business_cross_boundary_smoke_log;

select 'active_contracts.count=' || count(*)
from aiworker.v_business_event_contract_registry_active;

select 'latest_validation.count=' || count(*)
from aiworker.v_business_event_contract_latest_validation;

select 'latest_smoke.count=' || count(*)
from aiworker.v_business_cross_boundary_smoke_latest;
SQL

printf '%s\n' '============================================================'
printf '%s\n' 'PKG-AIW-009 VERIFY BUSINESS EVENT CONTRACT STATE FINISHED'
printf '%s\n' '============================================================'
