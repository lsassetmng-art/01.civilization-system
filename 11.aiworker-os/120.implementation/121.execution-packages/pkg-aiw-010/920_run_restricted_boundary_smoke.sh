#!/data/data/com.termux/files/usr/bin/bash
set -eu
set -o pipefail

PKG_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
LOG_DIR="$PKG_DIR/.restricted-privileged-logs"
mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/920_run_restricted_boundary_smoke_$(date '+%Y%m%d_%H%M%S').log"

if [ "${PERSONA_DATABASE_URL:-}" = "" ]; then
  printf '%s\n' 'ERROR: PERSONA_DATABASE_URL is not set.'
  exit 1
fi

{
  printf '%s\n' '============================================================'
  printf '%s\n' 'PKG-AIW-010 RESTRICTED BOUNDARY SMOKE'
  printf '%s\n' '============================================================'

  psql "$PERSONA_DATABASE_URL" -v ON_ERROR_STOP=1 <<'SQL'
select *
from aiworker.fn_run_restricted_boundary_smoke('SMOKE_SYSTEM');
SQL

  printf '%s\n' '------------------------------------------------------------'
  printf '%s\n' 'LATEST RESTRICTED / PRIVILEGED SMOKE VIEW'
  psql "$PERSONA_DATABASE_URL" -At <<'SQL'
select flow_code || '|' || result_code || '|' || coalesce(note_text,'')
from aiworker.v_restricted_privileged_smoke_latest
order by flow_code;
SQL

  printf '%s\n' '============================================================'
  printf '%s\n' 'PKG-AIW-010 RESTRICTED BOUNDARY SMOKE FINISHED'
  printf '%s\n' '============================================================'
} 2>&1 | tee "$LOG_FILE"
