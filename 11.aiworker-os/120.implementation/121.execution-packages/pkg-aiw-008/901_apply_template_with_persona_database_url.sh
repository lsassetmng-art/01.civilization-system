#!/data/data/com.termux/files/usr/bin/bash
set -eu

PKG_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"

if [ "${PERSONA_DATABASE_URL:-}" = "" ]; then
  printf '%s\n' 'ERROR: PERSONA_DATABASE_URL is not set.'
  printf '%s\n' 'Export the target DB URL first, then rerun.'
  exit 1
fi

printf '%s\n' '============================================================'
printf '%s\n' 'PKG-AIW-008 APPLY TEMPLATE (CANONICAL)'
printf '%s\n' '============================================================'
printf '%s\n' 'Environment variable: PERSONA_DATABASE_URL'
printf '%s\n' 'Dependencies: PKG-AIW-001 through PKG-AIW-007 should already be applied.'
printf '%s\n' 'Review requirement: 佐藤(DB担当) review is required before DB apply.'
printf '%s\n' "Package dir: $PKG_DIR"
printf '%s\n' '============================================================'

psql "$PERSONA_DATABASE_URL" -v ON_ERROR_STOP=1 -f "$PKG_DIR/001_create_smoke_seed_support_tables.sql"
psql "$PERSONA_DATABASE_URL" -v ON_ERROR_STOP=1 -f "$PKG_DIR/002_seed_smoke_reference_and_workers.sql"
psql "$PERSONA_DATABASE_URL" -v ON_ERROR_STOP=1 -f "$PKG_DIR/003_seed_smoke_payloads_and_intake.sql"
psql "$PERSONA_DATABASE_URL" -v ON_ERROR_STOP=1 -f "$PKG_DIR/004_create_smoke_flow_helper_functions.sql"

printf '%s\n' '============================================================'
printf '%s\n' 'PKG-AIW-008 APPLY TEMPLATE FINISHED'
printf '%s\n' '============================================================'
