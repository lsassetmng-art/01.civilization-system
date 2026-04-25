#!/data/data/com.termux/files/usr/bin/bash
set -eu
set -o pipefail

PKG_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
LOG_DIR="$PKG_DIR/.restricted-privileged-logs"
mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/910_run_privileged_context_smoke_$(date '+%Y%m%d_%H%M%S').log"

if [ "${PERSONA_DATABASE_URL:-}" = "" ]; then
  printf '%s\n' 'ERROR: PERSONA_DATABASE_URL is not set.'
  exit 1
fi

{
  printf '%s\n' '============================================================'
  printf '%s\n' 'PKG-AIW-010 PRIVILEGED CONTEXT SMOKE'
  printf '%s\n' '============================================================'

  psql "$PERSONA_DATABASE_URL" -v ON_ERROR_STOP=1 <<'SQL'
select *
from aiworker.fn_run_privileged_context_smoke('SMOKE_SYSTEM');
SQL

  printf '%s\n' '------------------------------------------------------------'
  printf '%s\n' 'CURRENT PRIVILEGED PROFILE'
  psql "$PERSONA_DATABASE_URL" -At <<'SQL'
select worker_id || '|' || privileged_context_code || '|' || privileged_gate_code || '|' || active_flag::text
from aiworker.worker_privileged_profile
where worker_id = '71000000-0000-0000-0000-000000001002'::uuid
order by updated_at desc
limit 1;
SQL

  printf '%s\n' '============================================================'
  printf '%s\n' 'PKG-AIW-010 PRIVILEGED CONTEXT SMOKE FINISHED'
  printf '%s\n' '============================================================'
} 2>&1 | tee "$LOG_FILE"
