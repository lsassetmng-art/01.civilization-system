#!/data/data/com.termux/files/usr/bin/bash
set -eu
set -o pipefail

if [ "${PERSONA_DATABASE_URL:-}" = "" ]; then
  printf '%s\n' 'ERROR: PERSONA_DATABASE_URL is not set.'
  exit 1
fi

printf '%s\n' '============================================================'
printf '%s\n' 'PKG-AIW-011 VERIFY ACCEPTANCE BATCH STATE'
printf '%s\n' '============================================================'

psql "$PERSONA_DATABASE_URL" -At <<'SQL'
select 'acceptance_batch_runner_registry.count=' || count(*)
from aiworker.acceptance_batch_runner_registry;

select 'acceptance_batch_runner_log.count=' || count(*)
from aiworker.acceptance_batch_runner_log;

select 'acceptance_execution_batch.count=' || count(*)
from aiworker.acceptance_execution_batch;

select 'acceptance_verification_result.count=' || count(*)
from aiworker.acceptance_verification_result;

select 'latest_batch.count=' || count(*)
from aiworker.v_acceptance_batch_latest;

select 'latest_batch_items.count=' || count(*)
from aiworker.v_acceptance_batch_latest_item_results;
SQL

printf '%s\n' '============================================================'
printf '%s\n' 'PKG-AIW-011 VERIFY ACCEPTANCE BATCH STATE FINISHED'
printf '%s\n' '============================================================'
