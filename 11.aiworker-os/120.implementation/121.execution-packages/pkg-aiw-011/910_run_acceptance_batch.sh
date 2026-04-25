#!/data/data/com.termux/files/usr/bin/bash
set -eu
set -o pipefail

PKG_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
LOG_DIR="$PKG_DIR/.acceptance-batch-logs"
mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/910_run_acceptance_batch_$(date '+%Y%m%d_%H%M%S').log"

if [ "${PERSONA_DATABASE_URL:-}" = "" ]; then
  printf '%s\n' 'ERROR: PERSONA_DATABASE_URL is not set.'
  exit 1
fi

{
  printf '%s\n' '============================================================'
  printf '%s\n' 'PKG-AIW-011 FORMAL ACCEPTANCE BATCH'
  printf '%s\n' '============================================================'

  psql "$PERSONA_DATABASE_URL" -v ON_ERROR_STOP=1 <<'SQL'
select *
from aiworker.fn_run_formal_acceptance_batch('ACCEPTANCE_SYSTEM');
SQL

  printf '%s\n' '------------------------------------------------------------'
  printf '%s\n' 'LATEST ACCEPTANCE BATCH SUMMARY'
  psql "$PERSONA_DATABASE_URL" -At <<'SQL'
select
  acceptance_execution_batch_id::text || '|' ||
  batch_code || '|' ||
  batch_status_code || '|' ||
  latest_item_count::text || '|' ||
  latest_pass_count::text || '|' ||
  latest_fail_count::text
from aiworker.v_acceptance_batch_latest;
SQL

  printf '%s\n' '------------------------------------------------------------'
  printf '%s\n' 'LATEST ACCEPTANCE ITEM RESULTS'
  psql "$PERSONA_DATABASE_URL" -At <<'SQL'
select
  acceptance_verification_item_code || '|' ||
  actual_result_code || '|' ||
  critical_flag::text
from aiworker.v_acceptance_batch_latest_item_results
order by acceptance_verification_item_code;
SQL

  printf '%s\n' '============================================================'
  printf '%s\n' 'PKG-AIW-011 FORMAL ACCEPTANCE BATCH FINISHED'
  printf '%s\n' '============================================================'
} 2>&1 | tee "$LOG_FILE"
